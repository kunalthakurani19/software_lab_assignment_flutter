// import 'package:flutter/foundation.dart';
// import 'package:software_lab_assignment_flutter/repository/enquiry_repository.dart';


// class EnquiryViewModel with ChangeNotifier {
//   final enquiryRepo = EnquiryRepository();

//   ApiResponse<EnquiresModel> enquiryList = ApiResponse.loading();

//   setEnquiryList(ApiResponse<EnquiresModel> resposne) {
//     enquiryList = resposne;
//     notifyListeners();
//   }

//   Future<void> fetchEnquires() async {
//     setEnquiryList(ApiResponse.loading());

//     enquiryRepo.fetchEnquiries().then((value) {
//       setEnquiryList(ApiResponse.completed(value));
//       if (kDebugMode) {
//         print(value.toString());
//       }
//     }).onError((error, stackTrace) {
//       setEnquiryList(ApiResponse.error(error.toString()));
//     });
//   }
// }
