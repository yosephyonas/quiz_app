import 'package:get/get.dart';
import '../utilites/auth_control.dart';
import '../firebase/firebase_storage_service.dart';
import '../utilites/notification_service.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    //Get.put(PapersDataUploader());
    Get.put(AuthController(), permanent: true);
    Get.put(NotificationService());
    Get.lazyPut(() =>  FireBaseStorageService());
  }
}