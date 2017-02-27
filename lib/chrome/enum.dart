part of chromecast;

@JS()
class AutoJoinPolicy {
  // Automatically connects when the session was started with the same appId, in the same tab and page origin.
  external static String get TAB_AND_ORIGIN_SCOPED;
  // Automatically connects when the session was started with the same appId and the same page origin (regardless of tab).
  external static String get ORIGIN_SCOPED;
  // No automatic connection.
  external static String get PAGE_SCOPED;
}

@JS()
class Capability {
  // The receiver supports video output.
  external static String get VIDEO_OUT;
  // The receiver supports audio output.
  external static String get AUDIO_OUT;
  // The receiver supports video input (camera).
  external static String get VIDEO_IN;
  // The receiver supports audio input (microphone).
  external static String get AUDIO_IN;
  // The receiver represents a multi-zone group.
  external static String get MULTIZONE_GROUP;
}