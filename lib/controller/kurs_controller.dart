import 'package:get/get.dart';

import '../model/model.dart';

class KursController extends GetxController {
  var model = Model().obs;
  var changed = 0.obs;

  void setKurseName(int index, String content) {
    model.value.kurse[index].name = content;
    model.update((val) { });
  }

  void addKurs(Kurs k) {
    model.value.addKurs(k);
    changed++;
    model.update((val) { });
  }
}