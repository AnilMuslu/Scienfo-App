import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LabelTextField extends StatelessWidget {
  LabelTextField({
    Key? key,
  }) : super(key: key);

  Future<String> fetchCategory() async {
    var snapshot = await FirebaseFirestore.instance.doc("images/4bX5z5P5FHnOuc9l6qAl")
    .get();
    return snapshot["category"] as String;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: fetchCategory(),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text("Error: ${snapshot.error}");
        } else {
          return Stack(
          children: <Widget>[
            Text(
              snapshot.data!,     // fetched data
              //'#SustainabevelDopment',
              style: TextStyle(
                fontFamily: 'Algerian',
                fontSize: 19,
                color: const Color(0xff000000),
                height: 1.0526315789473684,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ],
        );
        }
        
      }
    );
  }
}
