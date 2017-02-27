part of cast;

@JS()
class SessionState {
  external static String get NO_SESSION;
  external static String get SESSION_STARTING;
  external static String get SESSION_STARTED;
  external static String get SESSION_START_FAILED;
  external static String get SESSION_ENDING;
  external static String get SESSION_ENDED;
  external static String get SESSION_RESUMED;
}

@JS()
class CastSession {
  external void addEventListener(String type, Function handler);
  external void addMessageListern(String namespace, Function listener);
  external void removeEventListener(String type, Function handler);
  external void removeMessageListern(String namespace, Function listener);
 
  external void endSession(bool stopCasting);

  // See [ActiveInputState]
  external num getActiveInputState();
  external ApplicationMetadata getApplicationMetaData();
  external String getApplicationStatus();
  external Receiver getCastDevice();
  external Media getMediaSession();
  external String getSessionId();
  external Session getSessionObj();
  external String getSessionState();
  external num getVolume();
  external bool isMute();

  external dynamic loadMedia(LoadRequest loadRequest);
  external dynamic sendMessage(String namespace, dynamic data);
  external dynamic setMute(bool isMute);
  external dynamic setVolume(num volume);

}