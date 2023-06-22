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

  Stream<List<Map<String, dynamic>>> getTechnologyImagesStream() {
    return _firestore
        .collection("images")
        .where("category", isEqualTo: "technology")
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

  Stream<List<Map<String, dynamic>>> getEngineeringImagesStream() {
    return _firestore
        .collection("images")
        .where("category", isEqualTo: "engineering")
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

  Stream<List<Map<String, dynamic>>> getMathematicsImagesStream() {
    return _firestore
        .collection("images")
        .where("category", isEqualTo: "mathematics")
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

  Stream<List<Map<String, dynamic>>> getArtImagesStream() {
    return _firestore
        .collection("images")
        .where("category", isEqualTo: "art")
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

  Stream<List<Map<String, dynamic>>> getHealthImagesStream() {
    return _firestore
        .collection("images")
        .where("category", isEqualTo: "health")
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

  Stream<List<Map<String, dynamic>>> getNutritionImagesStream() {
    return _firestore
        .collection("images")
        .where("category", isEqualTo: "nutrition")
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

  Stream<List<Map<String, dynamic>>> getSportsImagesStream() {
    return _firestore
        .collection("images")
        .where("category", isEqualTo: "sports")
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

  Stream<List<Map<String, dynamic>>> getSdgImagesStream() {
    return _firestore
        .collection("images")
        .where("category", isEqualTo: "sdg")
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
