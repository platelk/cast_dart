part of cast.receiver;

@JS()
class MediaManager {
  external MediaManager(MediaElement mediaElement, [num opt_supportedCommands, String opt_id]);
}

@JS("MediaManager.Event")
class MediaManagerEvent {
  external MediaManagerEvent(String type);
}

@JS("MediaManager.EventType")
class MediaManagerEventType {
  external static String get LOAD;
  external static String get STOP;
  external static String get PAUSE;
  external static String get PLAY;
  external static String get SEEK;
  external static String get SET_VOLUME;
}