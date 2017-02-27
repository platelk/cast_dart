@JS("cast.receiver")
library cast.receiver;

import 'dart:html';
import 'package:js/js.dart';
import 'package:func/func.dart';

import 'receiver/media.dart';
export 'receiver/media.dart';

import 'receiver/system.dart';
export 'receiver/system.dart';

part 'receiver/media_manager.dart';
part 'receiver/cast_receiver_manager.dart';
part 'receiver/cast_message_bus.dart';
part 'receiver/cast_channel.dart';