part of chromecast;

@JS()
class Volume {
  external Volume(num opt_level, bool opt_muted);

  external num get level;
  external set level(num v);

  external bool get muted;
  external set muted(bool v);
}