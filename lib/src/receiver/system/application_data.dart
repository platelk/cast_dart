part of cast.receiver.system;

@JS()
class ApplicationData {
  external ApplicationData();

  external String get id;
  external set id(String id);

  external String get launchingSenderId;
  external set launchingSenderId(String s);

  external String get name;
  external set name(String s);

  external List<String> get namespaces;
  external set namespaces(List<String> l);

  external num get sessionId;
  external set sessionId(num n);
}