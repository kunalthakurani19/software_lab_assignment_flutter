// import 'package:wedding_planner_app/data/network/base_api_service.dart';
// import 'package:wedding_planner_app/model/store_model.dart';
// import 'package:wedding_planner_app/res/app_url.dart';

// import '../data/network/network_api_services.dart';

// class StoreRepository {
//   BaseApiService apiServices = NetworkApiService();
//   Future<StoreDetailModalWithAuth> fetchStore() async {
//     try {
//       dynamic response =
//           await apiServices.getGetApiResponse(AppUrl.storeDetailWithAuth);

//       return response = StoreDetailModalWithAuth.fromJson(response);
//     } catch (e) {
//       rethrow;
//     }
//   }

//   Future<void> deleteStore(String id) async {
//     try {
//       String url = '${AppUrl.weddingaroUrl}/store/delete-store/$id';
//       await apiServices.getDeleteApiResponse(url);
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
