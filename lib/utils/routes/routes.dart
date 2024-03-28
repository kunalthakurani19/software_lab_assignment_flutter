import 'package:flutter/material.dart';
import 'package:software_lab_assignment_flutter/screens/afterAuthScreens/enquires/enquires_screen.dart';
import 'package:software_lab_assignment_flutter/screens/afterAuthScreens/main_screen.dart';
import 'package:software_lab_assignment_flutter/screens/auth_screens/login_screen.dart';
import 'package:software_lab_assignment_flutter/screens/auth_screens/signup_screen.dart';
import 'package:software_lab_assignment_flutter/screens/home_screen.dart';
import 'package:software_lab_assignment_flutter/screens/onbording_screen.dart';
import 'package:software_lab_assignment_flutter/screens/splash_screen.dart';
import 'package:software_lab_assignment_flutter/utils/routes/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //home and splash
      case RoutesName.splash:
        return MaterialPageRoute(builder: (BuildContext context) => const SplashScreen());
      case RoutesName.onbording:
        return MaterialPageRoute(builder: (BuildContext context) => const OnBoardingScreen());
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => const HomeScreen());

      case RoutesName.mainScreen:
        return MaterialPageRoute(builder: (BuildContext context) => const MainScreen());

      //auth route
      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => const LoginScreen());
      case RoutesName.signup:
        return MaterialPageRoute(builder: (BuildContext context) => const SignUpScreen());
      // case RoutesName.forgotpassword:
      //   return MaterialPageRoute(builder: (BuildContext context) => const ForgotScreen());
      // case RoutesName.resetPassword:
      //   return MaterialPageRoute(builder: (BuildContext context) => const ResetPassword());

      //tabs and stores

      case RoutesName.enquires:
        return MaterialPageRoute(builder: (BuildContext context) => const EnquiresScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No Route Defined'),
            ),
          );
        });
    }
  }
}
