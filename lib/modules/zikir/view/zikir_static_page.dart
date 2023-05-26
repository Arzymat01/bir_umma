// import 'package:flutter/material.dart';
// // ignore: import_of_legacy_library_into_null_safe
// import 'package:toggle_bar/toggle_bar.dart';

// class ZikirView extends StatefulWidget {
//   const ZikirView({Key? key}) : super(key: key);

//   @override
//   State<ZikirView> createState() => _ZikirViewState();
// }

// class _ZikirViewState extends State<ZikirView> {
//   List<String> labels = ['Апталык', 'Айлык', 'Жылдык'];
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             ToggleBar(
//               labels: labels,
//               textColor: Colors.white,
//               selectedTextColor: Colors.black,
//               selectedTabColor: Colors.lightBlueAccent,
//               labelTextStyle: const TextStyle(fontWeight: FontWeight.bold),
//               onSelectionUpdated: (index) {
//                 setState(() {
//                   counter = index;
//                 });
//               },
//             ),
//             const SizedBox(
//               height: 200,
//             ),
//             Text(
//               labels[counter],
//               style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 50,
//                   color: Colors.black),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
