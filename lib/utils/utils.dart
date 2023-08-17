String uppercase(
  String text, {
  required bool endWithPeriod,
}) {
  return text.toUpperCase() + (endWithPeriod ? '.' : '');
}
