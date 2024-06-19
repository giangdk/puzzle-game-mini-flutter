import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:puzzle/core/injection/injection.dart';
import 'package:puzzle/features/data/data_source/remote/api/product_api.dart';
import 'package:puzzle/features/data/models/group_question/group_question.dart';
import 'package:puzzle/features/data/models/set_of_question/set_of_question.dart';
import 'package:puzzle/features/presentation/screen/create_puzzle_screen/widget/create_quizz.dart';

class CreatePuzzleController extends GetxController {
  var repo = getIt.get<ProductApi>();

  RxList<GroupQuestion> listGroupId = RxList([]);

  Rxn<GroupQuestion> groupIdSelected = Rxn();

  RxList<QuizzModel> listQuestion = RxList([]);

  TextEditingController titleController = TextEditingController();
  TextEditingController thumbnailController = TextEditingController();

  Rxn<XFile> image = Rxn();
  Future<void> getData() async {
    var db = FirebaseFirestore.instance;
    db.collection("listGroup").get().then(
      (querySnapshot) {
        print("Successfully get listGroup completed");
        for (var docSnapshot in querySnapshot.docs) {
          GroupQuestion model = GroupQuestion.fromJson(docSnapshot.data());
          listGroupId.add(model);
          model;
        }
        update();
      },
      onError: (e) => print("Error get listGroup completing: $e"),
    );
  }

  Future<void> createSetOfQuestion() async {}

  void pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      image.value = pickedImage;
      upImage(pickedImage);
    }
  }

  Future<String?> upImage(XFile file) async {
    try {
      String fileName = basename(file.path);
      // Get a reference to the Firebase Storage location where we'll store the image
      Reference firebaseStorageRef = FirebaseStorage.instance.ref().child('images/$fileName');

      // Upload the image file to Firebase Storage
      UploadTask uploadTask = firebaseStorageRef.putFile(
        File(file.path),
      );

      // Wait for the upload to complete and get the download URL
      String imageUrl = await (await uploadTask).ref.getDownloadURL();

      // Return the download URL
      thumbnailController.text = imageUrl;
      return imageUrl;
    } catch (e) {
      return null;
    }
  }

  Future<void> createQuestion() async {
    try {
      String id = generateRandomString(20);
      SetOfQuestion setOfQuestion = SetOfQuestion(
        id: id,
        title: titleController.text,
        thumbnail: thumbnailController.text,
        groupId: groupIdSelected.value?.groupId ?? "",
        questions: listQuestion
            .map((element) => Question(
                  answers: [
                    Answers(
                      answersContent: element.aController.text,
                      answersId: 'a',
                    ),
                    Answers(
                      answersContent: element.bController.text,
                      answersId: 'b',
                    ),
                    Answers(
                      answersContent: element.cController.text,
                      answersId: 'c',
                    ),
                    Answers(
                      answersContent: element.dController.text,
                      answersId: 'd',
                    ),
                  ],
                  questionTitle: element.titleController.text,
                  questionAnswer: element.anwer.text,
                ))
            .toList(),
      );
      var db = FirebaseFirestore.instance;
      final setOfQuestions = db.collection("setOfQuestions");

      setOfQuestions.doc(id).set(
            jsonDecode(jsonEncode(setOfQuestion.toJson())),
          );
      EasyLoading.showSuccess(
        "Tạo câu đố thành công",
      );
      await Future.delayed(
        const Duration(
          seconds: 2,
        ),
      );
      Get.back();
    } catch (e) {
      print("error ${e.toString()}");
    }
  }

  String generateRandomString(int length) {
    const String chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    Random random = Random();
    String result = '';
    for (int i = 0; i < length; i++) {
      int randomIndex = random.nextInt(chars.length);
      result += chars[randomIndex];
    }

    return result;
  }
}
