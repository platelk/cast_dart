part of cast;

@JS()
class CastState {
  external static String get NO_DEVICES_AVAILABLE;
  external static String get NOT_CONNECTED;
  external static String get CONNECTING;
  external static String get CONNECTED;
}

@JS()
class CastContextEventType {
  external static String get CAST_STATE_CHANGED;
  external static String get SESSION_STATE_CHANGED;
}

@JS()
class ActiveInputState {
  external static num get ACTIVE_INPUT_STATE_UNKNOWN;
  external static num get ACTIVE_INPUT_STATE_NO;
  external static num get ACTIVE_INPUT_STATE_YES;
}

@JS()
@anonymous
class CastOptions {

  external factory CastOptions(
      {String receiverApplicationId,
      bool resumeSavedSession,
      String autoJoinPolicy,
      String language});

  external String get language;
  external set language(String v);

  external String get receiverApplicationId;
  external set receiverApplicationId(String v);

  external bool get resumeSavedSession;
  external set resumeSavedSession(bool b);

  external String get autoJoinPolicy;
  external set autoJoinPolicy(String value);
}

@JS()
class ApplicationMetadata {
  external ApplicationMetadata(Session session);

  external String get applicationId;

  external List<Image> get images;

  external String get name;

  external List<String> get namespaces;
}
