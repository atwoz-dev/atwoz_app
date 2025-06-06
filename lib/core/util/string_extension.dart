extension StringExtension on String {
  String camelCaseToSnakeCase({bool upper = true}) {
    final result = replaceAllMapped(
      RegExp(r'([a-z])([A-Z])'),
      (match) => '${match.group(1)}_${match.group(2)}',
    );
    return upper ? result.toUpperCase() : result.toLowerCase();
  }
}
