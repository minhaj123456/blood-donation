// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';


// class success extends StatefulWidget {
//   const success({super.key});

//   @override
//   State<success> createState() => _successState();
// }

// class _successState extends State<success> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        appBar: AppBar(
//         title: Text("Blood Donation App"),
//         backgroundColor: Colors.red,
//       ),
//          body: StreamBuilder<QuerySnapshot>(
//         stream: donor.snapshots(),
//         builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//                 itemCount: snapshot.data!.docs.length,
//                 itemBuilder: (context, index) {
//                   final DocumentSnapshot donorsnap = snapshot.data!.docs[index];
//                   //   return ListTile(
//                   //     title: Text(donorsnap['name']),
//                   //     // Add more widgets here to display other data
//                   //   );
//                   // },
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Colors.white,
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.grey,
//                                 blurRadius: 15,
//                                 spreadRadius: 10)
//                           ]),
//                       height: 80,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                               child: ListTile(
//                           leading: CircleAvatar(
//                             radius: 25,
//                             backgroundColor: Colors.red,
//                             child: Text(donorsnap['group']),
//                           ),
//                           title: Text(donorsnap['name']),
//                           subtitle: Text(donorsnap['phone no'].toString()),
//                           trailing: IconButton(
//                             onPressed: () {
                              
//                             },
//                             icon: Icon(Icons.delete),
//                           ),
//                         ),
//                       ),
//                       // child: Row(
//                       //   children: [
//                       //   ListTile(leading:   CircleAvatar(
//                       //       backgroundColor: Colors.red,
//                       //       child: Text(donorsnap['group']),
//                       //     ),),
//                       //     Text(donorsnap['name'])
//                       //   ],
//                       // ),
//                     ),
//                   );
//                 });
//           }
//           if (snapshot.hasError) {
//             return Center(
//               child: Text('Error: ${snapshot.error}'),
//             );
//           }
//           return Center(
//             child: CircularProgressIndicator(),
//               );
//         },
//      ),




//     );
//   }
// }