import 'package:deshi_mart/features/authentication/signIn.dart';
import 'package:deshi_mart/features/authentication/signUp.dart';
import 'package:deshi_mart/features/homescreen/homescreen.dart';
import 'package:deshi_mart/features/onboard/get_started.dart';
import 'package:deshi_mart/features/onboard/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashScreen()),
      GoRoute(path: '/get-started', builder: (context, state) => GetStarted()),
      GoRoute(path: '/sign-in', builder: (context, state) => SingIn(),),
      GoRoute(path: '/sign-up', builder: (context, state) => SignUp(),),
      GoRoute(path: '/homescreen', builder: (context, state) => HomeScren(),)
    ],
  );
}
