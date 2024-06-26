import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:puzzle/core/config/app_colors.dart';
import 'package:puzzle/core/injection/injection.config.dart';
import 'package:puzzle/features/presentation/routes/app_routes.dart';
import 'package:puzzle/features/presentation/screen/home_screen/controller/home_controller.dart';
import 'package:puzzle/features/presentation/screen/list_quizz_screen/controller/list_quizz_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController = Get.put(HomeController());
  final InAppController inappController = Get.put(InAppController());
  TextEditingController search = TextEditingController();
  bool searchId = false;
  @override
  void initState() {
    super.initState();
    homeController.getData();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    homeController.init();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (homeController) {
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
              child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                const Text(
                  "Hành Trình Trí Tuệ",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Obx(
                  () => Text(
                    "Bạn còn ${homeController.turn.value} lượt chơi",
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 350,
                  child: Column(
                    children: [
                      if (searchId) ...[
                        Container(
                          width: 500,
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
                                    final ListQuizzController controller = Get.put(ListQuizzController());
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
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                      ButtonMenu(
                        onTap: () {
                          setState(() {
                            searchId = true;
                          });
                        },
                        title: "Tham gia bằng mã câu đố",
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      ButtonMenu(
                        onTap: () {
                          Get.toNamed(
                            AppRoutes.listQuizzScreen,
                          )?.then((value) {
                            homeController.init();
                          });
                          ;
                        },
                        title: "Chơi ngay",
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      ButtonMenu(
                        onTap: () {
                          Get.toNamed(AppRoutes.createPuzzle)?.then((value) {
                            homeController.init();
                          });
                        },
                        title: "Tạo câu đố",
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      GetBuilder<InAppController>(builder: (inAppController) {
                        return ButtonMenu(
                          onTap: () async {
                            final PurchaseParam purchaseParam = PurchaseParam(productDetails: inappController.products.value[0]);
                            try {
                              await inAppController.inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
                            } catch (e) {
                              print('Error during purchase: $e');
                              if (e is PlatformException && e.code == 'storekit_duplicate_product_object') {}
                            }
                          },
                          title: "Mua lượt chơi",
                        );
                      })
                    ],
                  ),
                ),
              ],
            ),
          )),
        );
      },
    );
  }
}

Future<void> showDialogUtils({
  String? title,
  required Widget content,
  Function? rightAction,
  required String rightTitle,
}) async {
  showDialog(
    context: Get.context!,
    builder: (BuildContext context) {
      return AlertDialog(
        insetPadding: const EdgeInsets.all(24),
        titlePadding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 12),
        contentPadding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        actionsPadding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        contentTextStyle: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w500),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(
          title ?? "",
          textAlign: TextAlign.center,
        ),
        content: content,
        actions: [
          Row(
            children: [
              Expanded(
                child: Material(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      // Get.back(result: false);
                      Get.back();
                    },
                    splashColor: Colors.black12,
                    highlightColor: Colors.black12,
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      alignment: Alignment.center,
                      child: Text(
                        'Thoát',
                        style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Material(
                  color: const Color.fromRGBO(141, 76, 211, 1),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Get.back();
                      rightAction?.call();
                    },
                    splashColor: Colors.black12,
                    highlightColor: Colors.black12,
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      alignment: Alignment.center,
                      child: Text(
                        rightTitle,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      );
    },
  );
}

class ButtonMenu extends StatefulWidget {
  const ButtonMenu({super.key, required this.onTap, required this.title});
  final String title;
  final Function onTap;
  @override
  State<ButtonMenu> createState() => _ButtonMenuState();
}

class _ButtonMenuState extends State<ButtonMenu> {
  Color _color = const Color.fromRGBO(117, 58, 179, 1);

  void _onEnter(PointerEvent details) {
    setState(() {
      _color = const Color.fromRGBO(161, 130, 195, 1); // Màu khi trỏ vào
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _color = const Color.fromRGBO(117, 58, 179, 1); // Màu khi trỏ ra
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: GestureDetector(
        onTap: () {
          widget.onTap.call();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: _color,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(141, 76, 211, 1),
                offset: Offset(0, 4),
              ),
            ],
          ),
          alignment: Alignment.center,
          height: 45,
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
