import 'package:puzzle/features/data/models/set_of_question/set_of_question.dart';
import 'package:puzzle/features/presentation/routes/app_routes.dart';
import 'package:puzzle/features/presentation/screen/create_puzzle_screen/create_puzzle_screen.dart';
import 'package:puzzle/features/presentation/screen/home_screen/home_screen.dart';
import 'package:puzzle/features/presentation/screen/list_quizz_screen/list_quizz_screen.dart';
import 'package:puzzle/features/presentation/screen/splash_screen/splash_screen.dart';
import 'package:get/get.dart';
import 'package:puzzle/features/presentation/screen/test_screen/test_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPages {
  static List<String> history = [];

  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      bindings: [],
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      bindings: [],
    ),
    GetPage(
      name: AppRoutes.createPuzzle,
      page: () => const CreatePuzzleScreen(),
      bindings: [],
    ),
    GetPage(
      name: AppRoutes.listQuizzScreen,
      page: () => const ListQuizzScreen(),
      bindings: [],
    ),
    GetPage(
      name: AppRoutes.testScreen,
      page: () {
        final setOfQuestion = Get.arguments?['setOfQuestion'] as SetOfQuestion;

        return TestScreen(
          setOfQuestion: setOfQuestion,
        );
      },
      bindings: [],
    ),
  ];
}
