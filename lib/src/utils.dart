class Utils {
 static String countryCodeToEmoji(String countryCode) {
    if (countryCode.length != 2) {
      throw ArgumentError(
        'Country code must be a 2-character ISO 3166-1 alpha-2 code.',
      );
    }

    final int firstLetter = countryCode.codeUnitAt(0) - 0x41 + 0x1F1E6;
    final int secondLetter = countryCode.codeUnitAt(1) - 0x41 + 0x1F1E6;

    return String.fromCharCode(firstLetter) + String.fromCharCode(secondLetter);
  }
}
