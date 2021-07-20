import 'package:levenshtein_distance/levenshtein_distance.dart';

void main() async {
  // As String extension
  print(await 'kitten'.levenshteinDistance('sitten'));
  // As a function
  print(await levenshteinDistance('kitten', 'sitten'));
}
