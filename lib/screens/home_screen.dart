import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:software_lab_assignment_flutter/model/user_details_model_with_token.dart';
import 'package:software_lab_assignment_flutter/res/color.dart';
import 'package:software_lab_assignment_flutter/res/common_components/wa_button.dart';
import 'package:provider/provider.dart';
import 'package:software_lab_assignment_flutter/utils/routes/routes_name.dart';
import 'package:software_lab_assignment_flutter/utils/utils.dart';
import 'package:software_lab_assignment_flutter/view_model/user_view_modal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final userPrefrence = Provider.of<UserViewModal>(context);
    // final PersistentTabController controller;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: FutureBuilder<UserDetailsModalWithToken>(
                future: userPrefrence.getUser(),
                builder: (context, snapshot) {
                  final userDetails = snapshot.data!;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                          'you are at Homepage now if you clean the app then you do not have to login the state has been mantained'),
                      WAButton(
                        'Logout',
                        borderRadius: 50,
                        buttonColor: AppColors.brown,
                        onPressed: () {
                          userPrefrence.remove().then((value) {
                            if (kDebugMode) {
                              print('logout');
                            }
                            Navigator.pushNamed(context, RoutesName.login);
                            Utils.flushBarSucessMessage('Logout Succesfully ', context);
                          });
                        },
                      ),
                      const Text(
                          'some api are not valid to working thats why i did not apply them hope you like my work! , you can also logout sucessfully'),
                      const Text('Kunal Thakurani'),
                      Text("UserDetails : ${userDetails.fname}"),
                    ],
                  );
                })),
      ),
    );
  }

  // Widget banner() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
  //     child: Container(
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10),
  //         color: AppColors.darkCream,
  //       ),
  //       padding: const EdgeInsets.all(10),
  //       child: Column(
  //         children: [
  //           WaText(
  //             "Your storefront isn’t active yet",
  //             fontsize: 14.dp,
  //             textAlignment: Alignment.centerLeft,
  //             fontWeight: FontWeight.bold,
  //           ),
  //           SizedBox(
  //             height: 1.h,
  //           ),
  //           WaText(
  //             "You need to complete all the fields to validate your storefront and be online.",
  //             fontsize: 14.dp,
  //             textAlignment: Alignment.centerLeft,
  //             fontWeight: FontWeight.w400,
  //           ),
  //           SizedBox(
  //             height: 1.h,
  //           ),
  //           InkWell(
  //             onTap: () => Navigator.pushNamed(context, RoutesName.createStore),
  //             child: WaText(
  //               "Go back to the steps",
  //               fontsize: 14.dp,
  //               underline: true,
  //               textAlignment: Alignment.centerLeft,
  //               fontWeight: FontWeight.w400,
  //             ),
  //           ),
  //           SizedBox(
  //             height: 1.h,
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
