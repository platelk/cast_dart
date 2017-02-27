part of chromecast;

@JS()
class SessionStatus {
  external static String get CONNECTED;
  external static String get DISCONNECTED;
  external static String get STOPPED;
}

@JS()
class Session {
  external Session();

  external String get appId;
  external set appId(String v);

  external List<Image> get appImages;
  external set appImages(List<Image> images);

  external String get displayName;
  external set displayName(String v);

  external List<Media> get media;
  external set media(List<Media> media);

  external List<String> get namespaces;
  external set namespaces(List<String> v);
  
  external Receiver get receiver;
  external set receiver(Receiver r);

  external List<SenderApplication> get senderApps;
  external set senderApps(List<SenderApplication> l);

  external String get sessionId;
  
  external String get status;

  external String get transportId;


  external void addMediaListener(VoidFunc1<Media> listener);
  external void addMessageListener(String namespaces, VoidFunc2<String, String> listener);
  external void addUpdateListener(VoidFunc1<bool> listener);

  external void removeMediaListener(VoidFunc1<Media> listener);
  external void removeMessageListener(String namespaces, VoidFunc2<String, String> listener);
  external void removeUpdateListener(VoidFunc1<bool> listener);

  external void leave(VoidFunc0 successCallback, VoidFunc1<Error> errorCallback);
  external void stop(VoidFunc0 successCallback, VoidFunc1<Error> errorCallback);
  
  external void sendMessage(String namespace, dynamic message, VoidFunc1<Media> successCallback, VoidFunc1<Error> errorCallback);

  external void loadMedia(LoadRequest loadRequest, VoidFunc0 successCallback, VoidFunc1<Error> errorCallback);
  external void queueLoad(QueueLoadRequest queueLoadRequest, VoidFunc1<Media> successCallback, VoidFunc1<Error> errorCallback);

  external void setReceiverVolumeLevel(num newLevel, VoidFunc0 successCallback, VoidFunc1<Error> errorCallback);
  external void setReceiverMuted(bool muted, VoidFunc0 successCallback, VoidFunc1<Error> errorCallback);
}