import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puzzle/features/data/models/group_question/group_question.dart';
import 'package:puzzle/features/presentation/screen/create_puzzle_screen/controller/create_puzzle_controller.dart';
import 'package:puzzle/features/presentation/screen/create_puzzle_screen/widget/create_quizz.dart';
import 'package:puzzle/features/presentation/screen/create_puzzle_screen/widget/custome_textfield.dart';
import 'package:puzzle/features/presentation/screen/home_screen/home_screen.dart';

class CreatePuzzleScreen extends StatefulWidget {
  const CreatePuzzleScreen({super.key});

  @override
  State<CreatePuzzleScreen> createState() => _CreatePuzzleScreenState();
}

class _CreatePuzzleScreenState extends State<CreatePuzzleScreen> {
  final CreatePuzzleController controller = Get.put(CreatePuzzleController());
  @override
  void initState() {
    controller.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreatePuzzleController>(
      builder: (controller) {
        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromARGB(255, 115, 11, 67),
                Color.fromARGB(255, 153, 17, 67),
              ],
            ),
          ),
          child: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    AppBar(
                      backgroundColor: Colors.white,
                      automaticallyImplyLeading: false,
                      elevation: 0,
                      leading: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back_rounded,
                          size: 32,
                          color: Color.fromARGB(255, 115, 11, 67),
                        ),
                      ),
                      title: const Text(
                        "Tạo câu đố mới",
                        style: TextStyle(
                          color: Color.fromARGB(255, 115, 11, 67),
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomeTextField(
                            title: "Tên bộ câu đố",
                            hint: "Tên bộ câu đố",
                            controller: controller.titleController,
                          ),
                          CustomeTextField(
                            title: "Ảnh giới thiệu",
                            hint: "Đường dẫn ảnh",
                            controller: controller.thumbnailController,
                            widget: InkWell(
                              onTap: () {
                                controller.pickImage();
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Icon(
                                  Icons.download_for_offline_outlined,
                                  color: Colors.grey,
                                  size: 32,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            "Chủ đề",
                            style: TextStyle(
                              color: Color.fromARGB(255, 115, 11, 67),
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.grey[400]!, width: 1),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: const Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            alignment: Alignment.center,
                            child: DropdownButtonHideUnderline(
                              child: Obx(
                                () => DropdownButton<GroupQuestion>(
                                  elevation: 0,
                                  isExpanded: true,
                                  underline: null,
                                  value: controller.groupIdSelected.value,
                                  hint: const Text('Chọn chủ đề'),
                                  items: controller.listGroupId.value.map((GroupQuestion value) {
                                    return DropdownMenuItem<GroupQuestion>(
                                      value: value,
                                      child: Text(value.groupId),
                                    );
                                  }).toList(),
                                  onChanged: (GroupQuestion? newValue) {
                                    if (newValue != null) {
                                      controller.groupIdSelected.value = newValue;
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.listQuestion.value.length,
                            itemBuilder: (context, index) {
                              return CreateQuizz(
                                index: index + 1,
                                quizzModel: controller.listQuestion.value[index],
                              );
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              controller.listQuestion.add(QuizzModel());
                              controller.update();
                            },
                            child: const Text(
                              "+ Thêm câu đố",
                              style: TextStyle(
                                color: Color.fromARGB(255, 115, 11, 67),
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          ButtonMenu(
                            title: "Tạo câu đố",
                            onTap: () {
                              controller.createQuestion();
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
