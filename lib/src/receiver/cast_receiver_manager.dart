part of cast.receiver;

@JS()
class CastReceiverManager {
  external CastReceiverManager();

  external VoidFunc1<CastReceiverManagerEvent> get onReady;
  external set onReady(VoidFunc1<CastReceiverManagerEvent> f);

  external VoidFunc1<SenderConnectedEvent> get onSenderConnected;
  external set onSenderConnected(VoidFunc1<SenderConnectedEvent> f);

  external VoidFunc1<SenderDisconnectedEvent> get onSenderDisconnected;
  external set onSenderDisconnected(VoidFunc1<SenderDisconnectedEvent> f);

  external VoidFunc1<ShutdownEvent> get onShutdown;
  external set onShutdown(VoidFunc1<ShutdownEvent> f);

  external VoidFunc1<StandbyChangedEvent> get onStandbyChanged;
  external set onStandbyChanged(VoidFunc1<StandbyChangedEvent> f);

  external VoidFunc1<SystemVolumeChangedEvent> get onSystemVolumeChanged;
  external set onSystemVolumeChanged(VoidFunc1<SystemVolumeChangedEvent> f);

  external static CastReceiverManager getInstance();
  external ApplicationData getApplicationData();
  external CastMessageBus getCastMessageBus(String namespace, [String opt_messageType]);
  external dynamic getDevicesCapabilites();
  external Sender getSender(String senderId);
  external List<Sender> getSenders();
  external String getStandbyState();
  external String getSystemState();
  external String getVisibilityState();
  external bool isSystemReady();
  external void setApplicationState(String statusText);
  external void setInactivityTimeout(num maxInactivity);

  external void start([Config opt_config]);
  external void stop();
}

@JS("CastReceiverManager.Config")
@anonymous
class Config {
  external factory Config({num maxInactivity, String statusText});

  external num get maxInactivity;
  external set maxInactivity(num n);

  external String get statusText;
  external set statusText(String s);
}

@JS("CastReceiverManager.Event")
class CastReceiverManagerEvent {
  external CastReceiverManagerEvent(String type, dynamic data);

  external dynamic get data;
}

@JS("CastReceiverManager.SenderConnectedEvent")
class SenderConnectedEvent {
  external SenderConnectedEvent(String senderId, String userAgent);

  external String get senderId;
  external String get userAgent;
}

@JS("CastReceiverManager.SenderDisconnectedEvent")
class SenderDisconnectedEvent {
  external SenderDisconnectedEvent(String senderId, String userAgent, String reason);

  external String get senderId;
  external String get userAgent;
  external String get reason;
}

@JS("CastReceiverManager.ShutdownEvent")
class ShutdownEvent {
  external ShutdownEvent();
}

@JS("CastReceiverManager.StandbyChangedEvent")
class StandbyChangedEvent {
  external StandbyChangedEvent(bool isStandby);

  external bool get isStandby;
}

@JS("CastReceiverManager.VisibilityChangedEvent")
class VisibilityEvent {
  external VisibilityEvent(bool isVisible);

  external bool get isVisible;
}

@JS("CastReceiverManager.SystemVolumeChangedEvent")
class SystemVolumeChangedEvent {
  external SystemVolumeChangedEvent(SystemVolumeData volume);

  external SystemVolumeData get data;
}

@JS("CastReceiverManager.EventType")
class CastReceiverManagerEventType {
  external static String get READY;
  external static String get SHUTDOWN;
  external static String get SENDER_CONNECTED;
  external static String get SENDER_DISCONNECTED;
  external static String get ERROR;
  external static String get SYSTEM_VOLUME_CHANGED;
  external static String get VISIBILITY_CHANGED;
  external static String get STANDBY_CHANGED;
}