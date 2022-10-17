# Dart Levenshtein 

Levenshtein distance implementation in Dart.

## Usage

Here's an example code to compare two strings

```dart
import 'package:dart_levenshtein/dart_levenshtein.dart';

void main() async {
  // As String extension
  print(await 'kitten'.levenshteinDistance('sitten'));
  // As a function
  print(await levenshteinDistance('kitten', 'sitten'));
```


