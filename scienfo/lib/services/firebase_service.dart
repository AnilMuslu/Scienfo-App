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

  Stream<List<Map<String, dynamic>>> preSchoolImagesStream() {
    return _firestore
        .collection('images')
        .where('user_profile', isEqualTo: '#Pre-school')
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((DocumentSnapshot docSnapshot) {
        return docSnapshot.data() as Map<String, dynamic>;
      }).toList();
    });
  }

  Stream<List<Map<String, dynamic>>> primarySchoolImagesStream() {
    return _firestore
        .collection('images')
        .where('user_profile', isEqualTo: '#Primary-school')
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((DocumentSnapshot docSnapshot) {
        return docSnapshot.data() as Map<String, dynamic>;
      }).toList();
    });
  }

  Stream<List<Map<String, dynamic>>> middleSchoolImagesStream() {
    return _firestore
        .collection('images')
        .where('user_profile', isEqualTo: '#Middle-school')
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((DocumentSnapshot docSnapshot) {
        return docSnapshot.data() as Map<String, dynamic>;
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
        .where("category", isEqualTo: "#Sustainable Development Goals")
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

  Stream<List<Map<String, dynamic>>> getUserImagesStream(String? userType) {
    if (userType == null) {
      return getImageUrlsStream();
    } else if (userType == '#Pre-school') {
      return preSchoolImagesStream();
    } else if (userType == '#Middle-school') {
      return primarySchoolImagesStream();
    } else if (userType == '#High-school') {
      return middleSchoolImagesStream();
    } else {
      // if userType doesn't match any of the above, return the stream of all images
      return getImageUrlsStream();
    }
  }

  Stream<List<Map<String, dynamic>>> getFilteredImagesStream(String? userType) {
    Query query = _firestore.collection("images");

    // If userType is not null, apply the filter
    if (userType != null) {
      query = query.where("user_profile", isEqualTo: userType);
    }

    return query.snapshots().map((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((doc) {
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
