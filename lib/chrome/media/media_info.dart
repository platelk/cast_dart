part of chromecast.media;

@JS()
class MediaInfo {
  external MediaInfo(String contentId, String contentType);

  external String get contentId;
  external set contentId(String s);

  external String get contentType;
  external set contentType(String s);
}