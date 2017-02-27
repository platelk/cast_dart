part of chromecast;

@JS()
class ReceiverType {
  external static String get CAST;
  external static String get DIAL;
  external static String get HANGOUT;
  external static String get CUSTOM;
}

@JS()
@anonymous
class Receiver {
  external factory Receiver({String label, String friendlyName, List<String> opt_capabilities, Volume opt_volume});

  external List<String> get capabilites;
  external set capabilites(List<String> v);
  
  external ReceiverDisplayStatus get displayStatus;
  external set displayStatus(ReceiverDisplayStatus status);

  external String get friendlyName;
  external set friendlyName(String s);

  external String get label;
  external set label(String s);

  external String get receiverType;
  external set receiverType(String s);

  external Volume get volume;
  external set volume(Volume v);
}

@JS()
class ReceiverDisplayStatus {
  external ReceiverDisplayStatus(String statusText, List<Image> appImages);

  external List<Image> get appImages;
  external set appImages(List<Image> v);

  external bool get showStop;
  external set showStop(bool b);

  external String get statusText;
  external set statusText(String s);
}