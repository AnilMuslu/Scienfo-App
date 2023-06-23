import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  
  Stream<List<Map<String, dynamic>>> getImageUrlsStream() {
    return _firestore
        .collection("images")
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((doc) {
        // return a map containing both url and id
        return {
          "url": doc["image_url"].toString(),
          "id": doc.id,
          "category": doc["category"],
          "blog": doc["blog"],
          "profile": doc["user_profile"]
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
          "url": doc["image_url"].toString(),
          "id": doc.id,
          "category": doc["category"],
          "blog": doc["blog"],
          "profile": doc["user_profile"]
        };
      }).toList();
    });
  }

  Stream<List<Map<String, dynamic>>> getTechnologyImagesStream() {
    return _firestore
        .collection("images")
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((doc) {
        // return a map containing both url and id
        return {
          "url": doc["image_url"].toString(),
          "id": doc.id,
          "category": doc["category"],
          "blog": doc["blog"],
          "profile": doc["user_profile"]
        };
      }).toList();
    });
  }


  Stream<List<Map<String, dynamic>>> getEngineeringImagesStream() {
    return _firestore
        .collection("images")
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((doc) {
        // return a map containing both url and id
        return {
          "url": doc["image_url"].toString(),
          "id": doc.id,
          "category": doc["category"],
          "blog": doc["blog"],
          "profile": doc["user_profile"]
        };
      }).toList();
    });
  }


  Stream<List<Map<String, dynamic>>> getMathematicsImagesStream() {
    return _firestore
        .collection("images")
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((doc) {
        // return a map containing both url and id
        return {
          "url": doc["image_url"].toString(),
          "id": doc.id,
          "category": doc["category"],
          "blog": doc["blog"],
          "profile": doc["user_profile"]
        };
      }).toList();
    });
  }


  Stream<List<Map<String, dynamic>>> getArtImagesStream() {
    return _firestore
        .collection("images")
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((doc) {
        // return a map containing both url and id
        return {
          "url": doc["image_url"].toString(),
          "id": doc.id,
          "category": doc["category"],
          "blog": doc["blog"],
          "profile": doc["user_profile"]
        };
      }).toList();
    });
  }


  Stream<List<Map<String, dynamic>>> getHealthImagesStream() {
    return _firestore
        .collection("images")
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((doc) {
        // return a map containing both url and id
        return {
          "url": doc["image_url"].toString(),
          "id": doc.id,
          "category": doc["category"],
          "blog": doc["blog"],
          "profile": doc["user_profile"]
        };
      }).toList();
    });
  }


  Stream<List<Map<String, dynamic>>> getNutritionImagesStream() {
    return _firestore
        .collection("images")
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((doc) {
        // return a map containing both url and id
        return {
          "url": doc["image_url"].toString(),
          "id": doc.id,
          "category": doc["category"],
          "blog": doc["blog"],
          "profile": doc["user_profile"]
        };
      }).toList();
    });
  }


  Stream<List<Map<String, dynamic>>> getSportsImagesStream() {
    return _firestore
        .collection("images")
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((doc) {
        // return a map containing both url and id
        return {
          "url": doc["image_url"].toString(),
          "id": doc.id,
          "category": doc["category"],
          "blog": doc["blog"],
          "profile": doc["user_profile"]
        };
      }).toList();
    });
  }


  Stream<List<Map<String, dynamic>>> getSdgImagesStreams() {
    return _firestore
        .collection("images")
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((doc) {
        // return a map containing both url and id
        return {
          "url": doc["image_url"].toString(),
          "id": doc.id,
          "category": doc["category"],
          "blog": doc["blog"],
          "profile": doc["user_profile"]
        };
      }).toList();
    });
  }



}
