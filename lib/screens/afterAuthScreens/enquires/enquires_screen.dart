import 'package:flutter/material.dart';

class EnquiresScreen extends StatefulWidget {
  const EnquiresScreen({super.key});

  @override
  State<EnquiresScreen> createState() => _EnquiresScreenState();
}

class _EnquiresScreenState extends State<EnquiresScreen> {
  // EnquiryViewModel enquiryViewModel = EnquiryViewModel();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(), child: Text('hello')),
    );
  }
}
