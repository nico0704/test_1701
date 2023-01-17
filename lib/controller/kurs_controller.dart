import 'package:get/get.dart';

import '../model/model.dart';

class KursController extends GetxController {
  var model = Model().obs;
  var changed = 0.obs;
}