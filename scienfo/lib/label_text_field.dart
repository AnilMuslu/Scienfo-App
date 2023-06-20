import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LabelTextField extends StatelessWidget {
  final String documentId;
  LabelTextField({required this.documentId, Key? key}) : super(key: key);

  Stream<DocumentSnapshot> fetchContent() {
    return FirebaseFirestore.instance
        .collection("images")
        .doc(documentId)
        .snapshots();
  }
  
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: fetchContent(), 
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text("Error: ${snapshot.error}");
          } else {
            // Check if the data exists before performing the cast
            if (snapshot.data!.exists) {
              Map<String, dynamic> data =
                  snapshot.data!.data() as Map<String, dynamic>;
              return Text(
                data["category"], // fetch 'category' field from the data
                style: TextStyle(
                  fontFamily: 'Algerian',
                  fontSize: 19,
                  color: const Color(0xff000000),
                  height: 1.0526315789473684,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              );
            } else {
              return Text("No data found");
            }
          }
        });
  }
}
