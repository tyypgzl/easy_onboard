class StringConstants {
  static StringConstants? _instance;

  static StringConstants get instance => _instance ??= StringConstants._init();

  StringConstants._init();

  String get nextText => 'Next';
  String get skipText => 'Skip';
  String get lastPageText => 'Start';
}
