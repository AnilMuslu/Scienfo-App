import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class FirebaseService {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<List<String>> getImageUrls() async {
    List<String> imageUrls = [];

    firebase_storage.ListResult result = 
      await storage.ref('images').listAll();

      for (var ref in result.items) {
        String url = await ref.getDownloadURL();
        imageUrls.add(url);
      }
      return imageUrls;
  }

}
