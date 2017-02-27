part of cast.receiver;

@JS()
class CastChannel {
  external CastChannel(CastMessageBus castMessageBus, String senderId);

  external VoidFunc1<CastChannelEvent> get onClose;
  external set onClose(VoidFunc1<CastChannelEvent> f);

  external VoidFunc1<CastChannelEvent> get onMessage;
  external set onMessage(VoidFunc1<CastChannelEvent> f);

  external String getNamespace();
  external String getSenderId();
  external void send(dynamic message);
}

@JS("CastChannel.Event")
class CastChannelEvent {
    external CastChannelEvent(String type, dynamic message);

    external dynamic get message;
}

@JS("CastChannel.EventType")
class CastChannelEventType {
  external static String get MESSAGE;
  external static String get CLOSE;
}