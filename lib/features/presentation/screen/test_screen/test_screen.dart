import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:puzzle/features/data/models/set_of_question/set_of_question.dart';
import 'package:puzzle/features/presentation/routes/app_routes.dart';
import 'package:puzzle/features/presentation/screen/home_screen/home_screen.dart';
import 'package:puzzle/features/presentation/screen/list_quizz_screen/list_quizz_screen.dart';
import 'package:puzzle/features/presentation/screen/test_screen/controller/test_controller.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({
    super.key,
    required this.setOfQuestion,
  });
  final SetOfQuestion setOfQuestion;
  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final TestController controller = Get.put(TestController())..init();
  final PageController _pageController = PageController();
  bool finishTest = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(
            widget.setOfQuestion.thumbnail,
          ),
          fit: BoxFit.cover,
        ),
        gradient: const LinearGradient(
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
          AppBarDefault(
            title: widget.setOfQuestion.title,
            id: widget.setOfQuestion.id,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: finishTest == true
                  ? Container(
                      height: 700,
                      width: 1000,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: const Offset(3, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Lottie.asset('assets/lotties/success.json', height: 400),
                          Obx(
                            () => Text(
                              "Bạn đã trả lời đúng ${controller.point}/${widget.setOfQuestion.questions.length}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: ButtonMenu(
                                    onTap: () {
                                      Get.offAllNamed(AppRoutes.listQuizzScreen);
                                    },
                                    title: "Làm tiếp",
                                  ),
                                ),
                                const SizedBox(
                                  width: 100,
                                ),
                                Expanded(
                                  child: ButtonMenu(
                                    onTap: () {
                                      Get.offAllNamed(AppRoutes.home);
                                    },
                                    title: "Về trang chủ",
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(
                      height: 700,
                      width: 1000,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: widget.setOfQuestion.questions.length,
                        itemBuilder: (context, index) {
                          return TestDetail(
                            index: index + 1,
                            onFinish: (value) {
                              controller.answers[index] = value;
                              if (index != widget.setOfQuestion.questions.length - 1) {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              } else {
                                controller.checkPoint(widget.setOfQuestion.questions);
                                setState(() {
                                  finishTest = true;
                                });
                              }
                            },
                            question: widget.setOfQuestion.questions[index],
                          );
                        },
                      ),
                    ),
            ),
          )
        ],
      ),
    );
  }
}

class TestDetail extends StatefulWidget {
  const TestDetail({
    super.key,
    required this.question,
    required this.index,
    required this.onFinish,
  });
  final Question question;
  final int index;
  final Function(String) onFinish;
  @override
  State<TestDetail> createState() => _TestDetailState();
}

class _TestDetailState extends State<TestDetail> {
  List<Color> colors = [
    const Color.fromRGBO(35, 91, 158, 1),
    const Color.fromRGBO(40, 140, 149, 1),
    const Color.fromARGB(255, 221, 173, 131),
    const Color.fromRGBO(201, 60, 90, 1),
  ];
  List<Color> hoverColors = [
    const Color.fromARGB(255, 47, 122, 213),
    const Color.fromARGB(255, 52, 184, 196),
    const Color.fromRGBO(254, 134, 31, 1),
    const Color.fromARGB(255, 245, 14, 64),
  ];
  int hover = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 1000,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "${widget.index}. ${widget.question.questionTitle}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    CircularCountDownTimer(
                      duration: 10,
                      initialDuration: 0,
                      controller: CountDownController(),
                      width: 100,
                      height: 100,
                      ringColor: Colors.grey[300]!,
                      ringGradient: null,
                      fillColor: Colors.purpleAccent[100]!,
                      fillGradient: null,
                      backgroundColor: Colors.purple[500],
                      backgroundGradient: null,
                      strokeWidth: 20.0,
                      strokeCap: StrokeCap.round,
                      textStyle: const TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
                      textFormat: CountdownTextFormat.S,
                      isReverse: true,
                      isReverseAnimation: false,
                      isTimerTextShown: true,
                      autoStart: true,
                      onStart: () {
                        debugPrint('Countdown Started');
                      },
                      onComplete: () {
                        widget.onFinish.call("");
                      },
                      onChange: (String timeStamp) {
                        debugPrint('Countdown Changed $timeStamp');
                      },
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  for (int index = 0; index < 4; index++) ...[
                    Expanded(
                        child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            onEnter: (a) {
                              setState(() {
                                hover = index;
                              });
                            },
                            onExit: (b) {
                              setState(() {
                                hover = -1;
                              });
                            },
                            child: InkWell(
                              onTap: () {
                                widget.onFinish.call(widget.question.answers[index].answersId);
                              },
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: hover == index ? hoverColors[index] : colors[index],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "${widget.question.answers[index].answersId}. ${widget.question.answers[index].answersContent}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ))),
                    if (index != 3)
                      const SizedBox(
                        width: 10,
                      )
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
