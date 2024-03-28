import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:software_lab_assignment_flutter/model/user_details_model_with_token.dart';
import 'package:software_lab_assignment_flutter/utils/routes/routes_name.dart';
import 'package:software_lab_assignment_flutter/view_model/user_view_modal.dart';

class SplashServices {
  Future<UserDetailsModalWithToken> getUserData() => UserViewModal().getUser();

  void checkAuthentication(BuildContext context) async {
    getUserData().then((value) async {
      if (value.token.toString() == 'null' || value.token.toString() == '' || value.token == null) {
        if (kDebugMode) {
          print("token:${value.token}");
        }

        Future.delayed(const Duration(seconds: 2));
        Navigator.pushNamed(context, RoutesName.onbording);
      } else {
        if (kDebugMode) {
          print("token:${value.token}");
        }
        Future.delayed(const Duration(seconds: 2));
        Navigator.pushNamed(context, RoutesName.mainScreen);
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}
