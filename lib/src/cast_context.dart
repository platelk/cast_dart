part of cast;

@JS()
class CastContext {
  external static CastContext getInstance();

  external void addEventListener(String type, VoidFunc1<CastStateEventData> handler);
  external void endCurrentSession(bool stopCasting);
  // See [CastState]
  external String getCastState();
  external CastSession getCurrentSession();
  external String getSessionState();
  external void removeEventListener(String type, Function handler);
  external void setOptions(CastOptions options);
}

@JS()
class CastStateEventData {
  external CastStateEventData(String castState);

  external String get castState;
}