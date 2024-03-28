// import 'package:flutter/material.dart';

// class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String? title;
//   final List<Widget?>? actions;

//   const CommonAppBar({
//     super.key,
//     this.title,
//     this.actions = const [],
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       automaticallyImplyLeading: false,
//       title: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.asset(ImageRes.redWALogoPng),
//           Builder(
//             builder: (context) => IconButton(
//               icon: const Icon(Icons.menu),
//               onPressed: () {
//                 // Open the drawer using the new context
//                 Scaffold.of(context).openDrawer();
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
