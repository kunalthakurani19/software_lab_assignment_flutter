// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:software_lab_assignment_flutter/model/user_details_model_with_token.dart';
import 'package:software_lab_assignment_flutter/repository/auth_repository.dart';
import 'package:software_lab_assignment_flutter/utils/routes/routes_name.dart';
import 'package:software_lab_assignment_flutter/utils/utils.dart';

import 'user_view_modal.dart';

class AuthViewModel with ChangeNotifier {
  final myRepo = AuthRepository();

  bool _loading = false;
  bool get loading => _loading;

  bool _signupLoading = false;
  bool get signuploading => _signupLoading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  setSignupLoading(bool value) {
    _signupLoading = value;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setLoading(true);
    myRepo.loginApi(data).then((value) {
      setLoading(false);
      final userPrefrence = Provider.of<UserViewModal>(context, listen: false);

      userPrefrence.saveUser(
        UserDetailsModalWithToken(
          token: value['token'].toString(),
          email: value['user']['email'].toString(),
          fname: value['user']['full_name'].toString(),

          // lname: value['details']['lname'].toString(),
          // profilePic: value['details']['profilePic'].toString(),
        ),
      );

      Navigator.pushNamed(context, RoutesName.home);
      if (kDebugMode) {
        print(value.toString());
      }
      Utils.flushBarSucessMessage(value['message'].toString(), context);
    }).onError((error, stackTrace) {
      setLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }

  Future<void> resgisterApi(dynamic data, BuildContext context) async {
    setSignupLoading(true);
    myRepo.registerApi(data).then((value) {
      setSignupLoading(false);
      if (value['message'].toString() != 'Email already exists.') {
        Navigator.pushNamed(context, RoutesName.login);
        Utils.flushBarSucessMessage(value['message'].toString(), context);
      }
      Utils.flushBarSucessMessage(value['message'].toString(), context);
      print('sucessfull');
    }).onError((error, stackTrace) {
      setSignupLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }

  Future<void> forgotPasswordApi(dynamic data, BuildContext context) async {
    setSignupLoading(true);
    myRepo.forgotPasswordApi(data).then((value) {
      setSignupLoading(false);

      Navigator.pushNamed(context, RoutesName.login);
      Utils.flushBarSucessMessage('Reset link send successfull please check your mail', context);
    }).onError((error, stackTrace) {
      setSignupLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}
