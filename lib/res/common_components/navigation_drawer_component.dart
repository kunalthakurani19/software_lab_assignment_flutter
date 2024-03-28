// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_sizer/flutter_sizer.dart';
// import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
// import 'package:provider/provider.dart';
// import 'package:wedding_planner_app/model/user_details_model_with_token.dart';
// import 'package:wedding_planner_app/res/common_components/wa_button.dart';
// import 'package:wedding_planner_app/screens/afterAuthScreens/main_screen.dart';
// import 'package:wedding_planner_app/screens/auth_screens/login_screen.dart';
// import 'package:wedding_planner_app/screens/home_screen.dart';
// import 'package:wedding_planner_app/utils/routes/routes_name.dart';
// import 'package:wedding_planner_app/utils/utils.dart';
// import 'package:wedding_planner_app/view_model/user_view_modal.dart';

// class NavigatorDrawerComponent extends StatelessWidget {
//   const NavigatorDrawerComponent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final userPrefrence = Provider.of<UserViewModal>(context);

//     return Drawer(
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             buildMenuItems(context, userPrefrence),
//             buildHeader(context, userPrefrence),
//           ],
//         ),
//       ),
//     );
//   }

//   buildMenuItems(BuildContext context, UserViewModal userPrefrence) {
//     return FutureBuilder<UserDetailsModalWithToken>(
//       future: userPrefrence.getUser(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           if (snapshot.hasData) {
//             final userDetails = snapshot.data!;
//             return Container(
//               padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
//               child: Column(
//                 children: [
//                   const CircleAvatar(
//                     radius: 52,
//                     backgroundImage:
//                         NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
//                   ),
//                   SizedBox(
//                     height: 3.h,
//                   ),
//                   NormalText(
//                     text: '${userDetails.fname} ${userDetails.lname}',
//                     textAlignment: Alignment.center,
//                   ),
//                   NormalText(
//                     text: "${userDetails.email}",
//                     textAlignment: Alignment.center,
//                   ),
//                   SizedBox(
//                     height: 2.h,
//                   ),
//                   WAButton("View StoreFront", width: 50.w, height: 30, fontsize: 13, onPressed: () {
//                     Navigator.pop(context);
//                     (context as Element).findAncestorStateOfType<MainScreenState>()?.controller.jumpToTab(1);
//                   }),
//                   SizedBox(
//                     height: 2.h,
//                   )
//                 ],
//               ),
//             );
//           } else {
//             // Handle error case
//             return const Text('Error retrieving user details');
//           }
//         } else {
//           // Show loading indicator or other UI while fetching data
//           return const CircularProgressIndicator();
//         }
//       },
//     );
//   }

//   buildHeader(BuildContext context, UserViewModal userPrefrence) => Wrap(
//         runSpacing: 16,
//         children: [
//           ListTile(
//             leading: const Icon(Icons.home_outlined),
//             title: const NormalText(text: 'Home'),
//             onTap: () {
//               Navigator.pop(context);
//               (context as Element).findAncestorStateOfType<MainScreenState>()?.controller.jumpToTab(0);
//             },
//           ),
//           ListTile(
//               leading: const Icon(Icons.storefront_outlined),
//               title: const NormalText(text: 'Storefront'),
//               onTap: () {
//                 Navigator.pop(context); // Close the drawer
//                 (context as Element).findAncestorStateOfType<MainScreenState>()?.controller.jumpToTab(1);
//               }),
//           ListTile(
//               leading: const Icon(Icons.message_outlined),
//               title: const NormalText(text: 'Enquires'),
//               onTap: () {
//                 Navigator.pop(context); // Close the drawer
//                 (context as Element).findAncestorStateOfType<MainScreenState>()?.controller.jumpToTab(2);
//               }),
//           ListTile(
//               leading: const Icon(Icons.star_border_outlined),
//               title: const NormalText(text: 'Reviews'),
//               onTap: () {
//                 Navigator.pop(context); // Close the drawer
//                 (context as Element).findAncestorStateOfType<MainScreenState>()?.controller.jumpToTab(3);
//               }),
//           const Divider(
//             color: Colors.black54,
//           ),
//           ListTile(
//               leading: const Icon(Icons.logout_outlined),
//               title: const NormalText(text: 'Logout'),
//               onTap: () {
//                 userPrefrence.remove().then((value) {
//                   if (kDebugMode) {
//                     print('logout');
//                   }
//                   pushNewScreenWithRouteSettings(
//                     context,
//                     settings: const RouteSettings(name: RoutesName.login),
//                     screen: const LoginScreen(),
//                     withNavBar: false,
//                     pageTransitionAnimation: PageTransitionAnimation.cupertino,
//                   );
//                   Utils.flushBarSucessMessage('Logout Succesfully ', context);
//                 });
//               }),
//         ],
//       );
// }
