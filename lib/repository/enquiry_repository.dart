import 'package:software_lab_assignment_flutter/data/network/base_api_service.dart';
import 'package:software_lab_assignment_flutter/model/response/enquires_model.dart';
import 'package:software_lab_assignment_flutter/res/app_url.dart';

import '../data/network/network_api_services.dart';

class EnquiryRepository {
  BaseApiService apiServices = NetworkApiService();
  Future<EnquiresModel> fetchEnquiries() async {
    try {
      dynamic response = await apiServices.getGetApiResponse(AppUrl.enquiry);

      return response = EnquiresModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
