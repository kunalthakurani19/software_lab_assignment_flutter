// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:software_lab_assignment_flutter/res/color.dart';

class DividerComponent extends StatelessWidget {
  const DividerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 4,
          color: AppColors.grey.withOpacity(0.3),
        ),
        SizedBox(
          height: 2.h,
        ),
      ],
    );
  }
}
