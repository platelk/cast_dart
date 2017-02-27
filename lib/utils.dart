@JS('')
library chromecast.util;

import 'package:js/js.dart';
import 'package:func/func.dart';

@JS()
class Promise {
  external Promise(VoidFunc2<Function, Function> executor);

  external void then([Function onFulfilled, Function onRejected]);
  @JS('catch')
  external void onCatch(Function onRejected);
}