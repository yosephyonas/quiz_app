
import 'package:get/get.dart';

import 'firebase_reference.dart';
import '../pages/logger.dart';

class FireBaseStorageService extends GetxService{
   Future<String?> getImage(String? imageName) async {
    if (imageName == null) return null;

    try {
      var urlref = firebaseStorage
          .child('quiz_paper_images')
          .child('${imageName.toLowerCase()}.png');
      var url = await urlref.getDownloadURL();
      // final ref = firebaseStorage.child('${imageName.toLowerCase()}.png');
      // var url = await ref.getDownloadURL();
      // AppLogger.i(url);
      return url;
    } on Exception catch (e) {
      AppLogger.e(e);
      return null;
    }
  }
}