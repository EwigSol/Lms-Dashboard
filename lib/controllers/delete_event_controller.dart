

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:lmsadminpanle/utils/constants/strings_manager.dart';
import 'package:lmsadminpanle/utils/helpers/helper.dart';

class DeleteEventController extends GetxController {

  var isUpdatingEvent = false.obs;
  bool get loadingStatus => isUpdatingEvent.value;


  void deleteEvent(String id) async {
    try {
      isUpdatingEvent.value = true;
      await FirebaseFirestore.instance.collection('event').doc(id).delete();
      isUpdatingEvent.value = false;
      successToast(StringsManager.success, StringsManager.successMsj);
    } catch (e) {
      errorToast(StringsManager.error, e.toString());
      isUpdatingEvent.value = false;
    }
  }
}