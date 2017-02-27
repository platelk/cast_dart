part of cast.receiver.system;

@JS()
class SystemState {
  external static String get NOT_STARTED;
  external static String get STARTING_IN_BACKGROUND;
  external static String get STARTING;
  external static String get READY;
  external static String get STOPPING_IN_BACKGROUND;
  external static String get STOPPING;
}