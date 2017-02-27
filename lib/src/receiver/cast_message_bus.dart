part of cast.receiver;

@JS()
class CastMessageBus {
  external CastMessageBus(String namespace, dynamic ipcChannel, List<String> senders, [String opt_messageType]);

  external Func1<String, dynamic> get deserializeMessage;
  external set deserializeMessage(Func1<String, dynamic> handler);

  external VoidFunc1<MessageBusEvent> get onMessage;
  external set onMessage(VoidFunc1<MessageBusEvent> handler);

  external Func1<dynamic, String> get serializeMessage;
  external set serializeMessage(Func1<dynamic, String> handler);

  external void broadcast(dynamic message);
  external CastChannel getCastChannel();
  external String getMessageType();
  external String getNamespace();
  external void send(String senderId, dynamic message);
}

@JS("CastMessageBus.MessageType")
class MessageType {
  external static String get STRING;
  external static String get JSON;
  external static String get CUSTOM;
}

@JS("CastMessageBus.Event")
class MessageBusEvent {
  external MessageBusEvent(String type, String senderId, dynamic data);

  external dynamic get data;
  external set data(dynamic data);

  external String get senderId;
  external set senderId(String s);
}

@JS("CastMessageBus.EventType")
class EventType {
  external static String get MESSAGE;
}