// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:provider/provider.dart';
import 'package:software_lab_assignment_flutter/res/color.dart';
import 'package:software_lab_assignment_flutter/res/common_components/watext.dart';
import 'package:software_lab_assignment_flutter/res/common_components/watextformfeild.dart';
import 'package:software_lab_assignment_flutter/utils/routes/routes_name.dart';
import 'package:software_lab_assignment_flutter/view_model/auth_view_model.dart';

import '../../res/common_components/wa_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  ValueNotifier<bool> obsecurePassword = ValueNotifier(true);

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController bussinessNameController = TextEditingController();
  TextEditingController streetAddressController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  @override
  void dispose() {
    super.dispose();

    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   _showModalBottomSheet(context);
    // });
    final authViewModel = Provider.of<AuthViewModel>(context);

    // final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WaText(
                  'FarmerEats',
                  textAlign: TextAlign.left,
                  textAlignment: Alignment.centerLeft,
                  fontsize: 15,
                  fontWeight: FontWeight.w400,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 7.h,
                      ),
                      const WaText(
                        'Welcome!',
                        textAlign: TextAlign.left,
                        fontsize: 30,
                        textAlignment: Alignment.centerLeft,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      WATextFormField(
                        hintText: "Full Name",
                        controller: fullNameController,
                        fieldColor: AppColors.blackColor.withOpacity(0.1),
                        prefixIcon: const Icon(Icons.people),
                        // validator: ,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      WATextFormField(
                        hintText: "Email Address",
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        whichValidation: 'Email',
                        fieldColor: AppColors.blackColor.withOpacity(0.1),
                        prefixIcon: const Icon(Icons.email),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      WATextFormField(
                        hintText: "Phone Number",
                        controller: phoneController,
                        keyboardType: TextInputType.number,
                        whichValidation: 'Number',
                        fieldColor: AppColors.blackColor.withOpacity(0.1),
                        prefixIcon: const Icon(Icons.phone),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      WATextFormField(
                        hintText: "Password",
                        controller: passwordController,
                        fieldColor: AppColors.blackColor.withOpacity(0.1),
                        prefixIcon: const Icon(Icons.lock),

                        // validator: ,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      WATextFormField(
                        hintText: "Business Name",
                        controller: bussinessNameController,
                        fieldColor: AppColors.blackColor.withOpacity(0.1),
                        prefixIcon: const Icon(Icons.business),

                        // validator: ,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      WATextFormField(
                        hintText: "Street Adress",
                        controller: streetAddressController,
                        fieldColor: AppColors.blackColor.withOpacity(0.1),
                        prefixIcon: const Icon(Icons.lock),

                        // validator: ,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      WATextFormField(
                        hintText: "City",
                        controller: cityController,
                        fieldColor: AppColors.blackColor.withOpacity(0.1),
                        prefixIcon: const Icon(Icons.lock),

                        // validator: ,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      WAButton(
                        'Signup',
                        borderRadius: 50,
                        buttonColor: AppColors.brown,
                        loading: authViewModel.loading,
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            final data = {
                              "full_name": fullNameController.text.toString(),
                              "email": emailController.text.toString(),
                              "phone": phoneController.text.toString(),
                              "password": passwordController.text.toString(),
                              "role": "farmer",
                              "business_name": bussinessNameController.text.toString(),
                              "address": streetAddressController.text.toString(),
                              "city": cityController.text.toString(),
                              "device_token": "0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx",
                              "type": "email/facebook/google/apple",
                              "social_id": emailController.text.toString()
                            };

                            authViewModel.resgisterApi(data, context);
                          }
                        },
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.login);
                        },
                        child: WaText(
                          'Login ',
                          fontsize: 15,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.left,
                          textAlignment: Alignment.centerLeft,
                          textcolor: AppColors.blackColor.withOpacity(0.5),
                          underline: true,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget _buildBottomSheetContent(BuildContext context) {
//   return SingleChildScrollView(
//     child: 
//   );
// }

// Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // TextFormField(
//               //   controller: emailController,
//               //   keyboardType: TextInputType.emailAddress,
//               //   focusNode: emailFocusNode,
//               //   decoration: const InputDecoration(
//               //     hintText: 'Email',
//               //     labelText: 'Email',
//               //     prefix: Icon(Icons.alternate_email),
//               //   ),
//               //   onFieldSubmitted: (value) => Utils.fieldFocusChange(
//               //       context, emailFocusNode, passwordFocusNode),
//               // ),
//               // ValueListenableBuilder(
//               //   valueListenable: obsecurePassword,
//               //   builder: (context, value, child) {
//               //     return TextFormField(
//               //       controller: passwordController,
//               //       obscureText: obsecurePassword.value,
//               //       focusNode: passwordFocusNode,
//               //       decoration: InputDecoration(
//               //         hintText: 'Password',
//               //         labelText: 'Password',
//               //         prefix: const Icon(
//               //           Icons.lock_open_rounded,
//               //         ),
//               //         suffixIcon: InkWell(
//               //           onTap: () {
//               //             obsecurePassword.value = !obsecurePassword.value;
//               //           },
//               //           child: Icon(obsecurePassword.value
//               //               ? Icons.visibility_off_outlined
//               //               : Icons.visibility),
//               //         ),
//               //       ),
//               //     );
//               //   },
//               // ),
//               // SizedBox(
//               //   height: height * 0.085,
//               // ),
//               // RoundButton(
//               //   title: 'Login',
//               //   loading: authViewModel.loading,
//               //   onpress: () {
//               //     // Utils.flushBarErrorMessage('please enter email', context);
//               //     Map data = {
//               //       'email': emailController.text.toString(),
//               //       'password': passwordController.text.toString(),
//               //     };
//               //     authViewModel.loginApi(data, context);
//               //   },
//               // ),
//               // SizedBox(
//               //   height: height * 0.085,
//               // ),
//               // InkWell(
//               //   onTap: () {
//               //     Navigator.pushNamed(context, RoutesName.signup);
//               //   },
//               //   child: Text('Dont have account sign up'),
//               // )
//               hel
//             ],
//           ),
