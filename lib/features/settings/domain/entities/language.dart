class Language {
  const Language({required this.country, required this.languageCode});

  final String country;
  final String languageCode;

  static const supportedLanguages = [
    Language(country: 'Vietnam (VI)', languageCode: 'vi'),
    Language(country: 'English (EN)', languageCode: 'en'),
    Language(country: 'Indonesian (ID)', languageCode: 'id'),
    Language(country: 'Arabic (AR)', languageCode: 'ar'),
    Language(country: 'Chinese (CN)', languageCode: 'cn'),
    Language(country: 'Dutch (NL)', languageCode: 'nl'),
    Language(country: 'French (FR)', languageCode: 'fr'),
    Language(country: 'German (DE)', languageCode: 'de'),
    Language(country: 'Italian (IT)', languageCode: 'it'),
    Language(country: 'Korean (KO)', languageCode: 'ko'),
    Language(country: 'Portuguese (PT)', languageCode: 'pt'),
    Language(country: 'Russian (RU)', languageCode: 'ru'),
    Language(country: 'Spanish (ES)', languageCode: 'es'),
  ];
}
