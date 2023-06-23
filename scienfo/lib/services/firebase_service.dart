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
        .where("category", isEqualTo: "#Science")
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
        .where("category", isEqualTo: "#Technology")
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
        .where("category", isEqualTo: "#Engineering")
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
        .where("category", isEqualTo: "#Mathematics")
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
        .where("category", isEqualTo: "#Art")
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
        .where("category", isEqualTo: "#Health")
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
        .where("category", isEqualTo: "#Nutrition")
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
        .where("category", isEqualTo: "#Sports")
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
        .where("category", isEqualTo: "#Sdg")
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
  /*
  Future<List<String>> getFavorites(String userId) async {
    DocumentSnapshot userDoc = await _firestore.collection('users').doc(userId).get();
    return List<String>.from(userDoc['favorites'] ?? []);
  }
  

  Future<void> updateFavorite(
      String userId, String imageId, bool isFavorite) async {
    CollectionReference users = _firestore.collection('users');
    if (isFavorite) {
      // If it's already a favorite, remove the imageId from the 'favorites' field
      await users.doc(userId).update({
        'favorites': FieldValue.arrayRemove([imageId])
      });
    } else {
      // If it's not a favorite, add the imageId to the 'favorites' field
      await users.doc(userId).update({
        'favorites': FieldValue.arrayUnion([imageId])
      });
    }
  }
  */
}
