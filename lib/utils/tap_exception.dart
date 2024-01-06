class TapMinScaleException implements Exception {
  @override
  String toString() {
    return 'minScale is minScale > 1.0 || minScale < 0.0';
  }
}
