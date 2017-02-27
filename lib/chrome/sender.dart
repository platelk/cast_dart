part of chromecast;

@JS()
class SenderPlatform {
  external static String get CHROME;
  external static String get IOS;
  external static String get ANDROID;
}

@JS()
class SenderApplication {
  external SenderApplication(String platform);

  external String get packageId;
  external set packageId(String s);

  external String get platform;
  external set platform(String v);

  external String get url;
  external set url(String s);
}