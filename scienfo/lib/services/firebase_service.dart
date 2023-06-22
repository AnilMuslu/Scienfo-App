import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<String>> getImageUrlsStream() {
    return _firestore
        .collection("images")
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return doc["url"].toString();
      }).toList();
    });
  }

  Stream<List<Map<String, dynamic>>> getImageUrlsStream2() {
    return _firestore
        .collection("images")
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((doc) {
        // return a map containing both url and id
        return {
          "url": doc["url"].toString(),
          "id": doc.id,
          "category": doc["category"],
          "blog": doc["blog"]
        };
      }).toList();
    });
  }

  /*
  Stream<List<Map<String, dynamic>>> getScienceImagesStream() {
    return _firestore
      .collection("images")
      .where("category", isEqualTo: "science")
      .snapshots()
      .map((QuerySnapshot query) {
        List<Map<String, dynamic>> retVal = <Map<String, dynamic>>[];
        query.docs.forEach((element) {
          //retVal.add(element.data());
        });
      });
  }
  */

  Stream<List<Map<String, dynamic>>> getScienceImagesStream() {
    return _firestore
        .collection("images")
        .where("category", isEqualTo: "science")
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((doc) {
        // return a map containing both url and id
        return {
          "url": doc["url"].toString(),
          "id": doc.id,
          "category": doc["category"],
          "blog": doc["blog"]
        };
      }).toList();
    });
  }
}
