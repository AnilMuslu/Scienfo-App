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
            if (snapshot.data!.exists) {
              Map<String, dynamic> data =
                  snapshot.data!.data() as Map<String, dynamic>;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${data["category"]}', // Display 'id' field from the data
                    style: const TextStyle(
                        fontFamily: 'Algerian',
                        fontSize: 21,
                        color: Colors.black,
                        height: 1.1526315789473684,
                        fontWeight: FontWeight.bold),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                  Text(
                    '${data["user_profile"]}', // Display 'user_profile' field from the data
                    style: TextStyle(
                        fontFamily: 'Algerian',
                        fontSize: 21,
                        color: Colors.black,
                        height: 1.0526315789473684,
                        fontWeight: FontWeight.bold),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ],
              );
            } else {
              return Text("No data found");
            }
          }
        });
  }
}
