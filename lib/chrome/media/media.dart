part of chromecast.media;

@JS()
class Media {
  external Media(String sessionId, num mediaSessionId);
}

@JS()
class PlayerState {
  external static String get IDLE;
  external static String get PLAYING;
  external static String get PAUSED;
  external static String get BUFFERING;
}