import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:puzzle/features/presentation/routes/app_routes.dart';
import 'package:puzzle/features/presentation/screen/list_quizz_screen/controller/list_quizz_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListQuizzScreen extends StatefulWidget {
  const ListQuizzScreen({super.key});

  @override
  State<ListQuizzScreen> createState() => _ListQuizzScreenState();
}

class _ListQuizzScreenState extends State<ListQuizzScreen> {
  final ListQuizzController controller = Get.put(ListQuizzController());

  @override
  void initState() {
    controller.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ListQuizzController>(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppBarDefault(title: "Danh sách câu đố"),
                const SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: Obx(
                    () => ListView.separated(
                      itemCount: controller.mapQuizz.value.length,
                      itemBuilder: (context, index) {
                        var entries = controller.mapQuizz.value.entries.toList();
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Bộ câu đố ${entries[index].key}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Container(
                              height: 250,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                  top: 10,
                                ),
                                itemCount: entries[index].value.length,
                                itemBuilder: (context, index2) {
                                  return InkWell(
                                    onTap: () async {
                                      final SharedPreferences prefs = await SharedPreferences.getInstance();
                                      var a = prefs.getInt("turn") ?? 0;
                                      if (a <= 0) {
                                        EasyLoading.showError("Bạn cần mua thêm lượt chơi");
                                        return;
                                      } else {
                                        prefs.setInt("turn", a - 1);
                                      }
                                      Get.toNamed(AppRoutes.testScreen, arguments: {
                                        "setOfQuestion": entries[index].value[index2],
                                      });
                                    },
                                    child: Container(
                                      height: 250,
                                      width: 220,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.grey[400]!,
                                          width: 1,
                                        ),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 0,
                                            spreadRadius: 0,
                                            offset: Offset(2, 2),
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Expanded(
                                            flex: 3,
                                            child: CachedNetworkImage(
                                              imageUrl: entries[index].value[index2].thumbnail,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              padding: const EdgeInsets.symmetric(
                                                vertical: 12,
                                                horizontal: 10,
                                              ),
                                              child: Text(
                                                entries[index].value[index2].title,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (BuildContext context, int index) {
                                  return const SizedBox(
                                    width: 20,
                                  );
                                },
                              ),
                            )
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 12,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ));
      },
    );
  }
}

class AppBarDefault extends StatelessWidget {
  AppBarDefault({
    super.key,
    required this.title,
    this.id,
  });
  final TextEditingController search = TextEditingController();
  final String title;
  final String? id;
  final ListQuizzController controller = Get.put(ListQuizzController());

  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    EasyLoading.showSuccess("Đã sao chép vào bộ nhớ đệm");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Icon(
                Icons.arrow_back_rounded,
                size: 32,
                color: Color.fromARGB(255, 115, 11, 67),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (id != null && id != "") {
                _copyToClipboard(id ?? "");
              }
            },
            child: Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 115, 11, 67),
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                if (id != null && id != "") ...[
                  Text(
                    "ID: $id",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 115, 11, 67),
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Icon(
                    Icons.copy_rounded,
                    size: 20,
                  )
                ]
              ],
            ),
          ),
          Container(
            width: 250,
            margin: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 4,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(left: 12, right: 12, bottom: 13),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                      border: Border.all(width: 1, color: const Color.fromARGB(255, 115, 11, 67)),
                    ),
                    child: TextFormField(
                      autofocus: false,
                      cursorColor: Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
                      controller: search,
                      decoration: InputDecoration(
                        hintText: "Nhập ID câu đố",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w400,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: InkWell(
                    onTap: () {
                      controller.searchQuestion(search.text).then((value) {});
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 115, 11, 67),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomRight: Radius.circular(6),
                        ),
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 115, 11, 67),
                        ),
                      ),
                      child: const Icon(
                        Icons.manage_search_rounded,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
