part of chromecast;

@JS()
class ErrorCode {
  external static String get CANCEL;
  external static String get TIMEOUT;
  external static String get API_NOT_INITIALIZED;
  external static String get INVALID_PARAMETER;
  external static String get EXTENSION_NOT_COMPATIBLE;
  external static String get EXTENSION_MISSING;
  external static String get RECEIVER_UNAVAILABLE;
  external static String get SESSION_ERROR;
  external static String get CHANNEL_ERROR;
  external static String get LOAD_MEDIA_FAILED;
}

@JS()
@anonymous
class Error {
  external factory Error({String code, String opt_description, Object opt_details});

  external String get code;
  external set code(String s);

  external String get description;
  external set description(String s);

  external Object get details;
  external set details(Object o);
}