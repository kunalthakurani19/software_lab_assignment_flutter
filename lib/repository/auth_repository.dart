import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:software_lab_assignment_flutter/data/network/base_api_service.dart';
import 'package:software_lab_assignment_flutter/data/network/network_api_services.dart';
import 'package:software_lab_assignment_flutter/res/app_url.dart';

class AuthRepository {
  BaseApiService apiServices = NetworkApiService();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      if (kDebugMode) {
        print(data);
      }
      dynamic response = await apiServices.getPostApiResponse(AppUrl.loginUrl, data);

      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> registerApi(dynamic data) async {
    try {
      dynamic response = await apiServices.getPostApiResponse(AppUrl.registerApiEndPointUrl, data);

      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> forgotPasswordApi(dynamic data) async {
    try {
      dynamic response = await apiServices.getPostApiResponse(AppUrl.forgotPasswordUrl, jsonEncode(data));

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
