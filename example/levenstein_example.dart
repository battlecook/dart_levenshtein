import 'package:levenshtein_distance/dart_levenshtein.dart';

void main() async {
  // As String extension
  print(await 'kitten'.levenshteinDistance('sitten'));
  // As a function
  print(await levenshteinDistance('kitten', 'sitten'));
}
