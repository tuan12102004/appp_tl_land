// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;

//   const CustomAppBar({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.white,
//       elevation: 0,
//       automaticallyImplyLeading: false,
//       title: Row(
//         children: [
//           GestureDetector(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Icon(
//               Icons.arrow_back_ios,
//               color: Color(0xff179BE0),
//               size: 24.sp,
//             ),
//           ),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 17.sp,
//               fontWeight: FontWeight.w400,
//               color: const Color(0xff179BE0),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// }
