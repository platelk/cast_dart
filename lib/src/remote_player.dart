part of cast;

@JS()
class RemotePlayerEventType {
  external static String get ANY_CHANGE; 
  external static String get IS_CONNECTED_CHANGED; 
  external static String get IS_MEDIA_LOADED_CHANGED; 
  external static String get DURATION_CHANGED; 
  external static String get CURRENT_TIME_CHANGED; 
  external static String get IS_PAUSED_CHANGED; 
  external static String get VOLUME_LEVEL_CHANGED; 
  external static String get IS_MUTED_CHANGED; 
  external static String get CAN_PAUSE_CHANGED; 
  external static String get CAN_SEEK_CHANGED; 
  external static String get DISPLAY_NAME_CHANGED; 
  external static String get STATUS_TEXT_CHANGED; 
  external static String get TITLE_CHANGED; 
  external static String get DISPLAY_STATUS_CHANGED; 
  external static String get MEDIA_INFO_CHANGED; 
  external static String get IMAGE_URL_CHANGED; 
  external static String get PLAYER_STATE_CHANGED; 
}

@JS()
class RemotePLayerChangedEvent {
  external RemotePLayerChangedEvent(String type, String field, dynamic value);

  external String get field;
  external set field(String s);

  external dynamic get value;
  external set value(dynamic v);
}

@JS()
class RemotePlayer {
  external RemotePlayer();

  external bool get canPause;
  external set canPause(bool b);

  external bool get canSeek;
  external set canSeek(bool b);

  external num get currentTime;
  external set currentTime(num n);

  external String get displayName;
  external set displayName(String s);

  external String get displayStatus;
  external set displayStatus(String s);

  external num get duration;
  external set duration(num n);

  external String get imageUrl;
  external set imageUrl(String url);

  external bool get isConnected;
  external set isConnected(bool b);

  external bool get isMuted;
  external set isMuted(bool b);

  external bool get isMuted;
  external set isMuted(bool b);

  external bool get isPaused;
  external set isPaused(bool b);

  external MediaInfo get mediaInfo;
  external set mediaInfo(MediaInfo m);

  external String get playerState;
  external set playerState(String state);

  external String get savedPlayerState;
  external set savedPlayerState(String state);

  external String get statusText;
  external set statusText(String status);

  external String get title;
  external set title(String title);

  external num get volumeLevel;
  external set volumeLevel(num v);
}

@JS()
class RemotePlayerController {
  external RemotePlayerController(RemotePlayer player);

  external void addEventListener(String type, VoidFunc1<RemotePLayerChangedEvent> handler);
  external void removeEventListener(String type, VoidFunc1<RemotePLayerChangedEvent> handler);

  external String getFormattedTime(num timeInSec);
  external num getSeekPosition(num currentTime, num duration);
  external num getSeekTime(num currentPosition, num duration);
  external void muteOrUnmute();
  external void playOrPause();

  external void seek();
  external void setVolumeLevel();
  external void stop();
}