// import 'dart:typed_data';
//
// import 'package:firebase_storage/firebase_storage.dart';
//
// class Storage {
//   FirebaseStorage firebaseStorage = FirebaseStorage.instance;
//   Future upload(String name, Uint8List? bytes) async {
//     try {
//       await firebaseStorage.ref('images/$name').putData(bytes!);
//     } catch (e) {
//       print(e);
//     }
//   }
// }

import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';

class Storage {
  static FirebaseStorage storage = FirebaseStorage.instance;

  Future<String?> upload(String name, Uint8List file) async {
    try {
      Reference ref = storage.ref().child('images/$name.png');

      //print(String.fromCharCodes(file));
      UploadTask task = ref.putData(file);

      return await task.then(
        (result) => result.ref.getDownloadURL(),
      );
    } catch (e) {
      print("ImageUploadCatchblockError");
      print(e);
    }
  }
}
