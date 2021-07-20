import 'dart:async';
import 'dart:math';

/// An extension to get the tail of the string. Something like syntaxic sugar
/// to avoid substring every time.
extension on String {
  String get tail {
    return substring(1);
  }
}

/// Computes the minimum number of single-character edits (insertions, deletions or substitutions)
/// required to change the [str1] into the [str2]
Future<int> levenshteinDistance(String str1, String str2) async {
  return str1.levenshteinDistance(str2);
}

extension StringMatcher on String {
  /// Computes the minimum number of single-character edits (insertions, deletions or substitutions)
  /// required to change the current String into the [other]
  Future<int> levenshteinDistance(String other) async {
    if (isEmpty) return other.length;
    if (other.isEmpty) return length;
    if (this[0] == other[0]) return tail.levenshteinDistance(other.tail);
    return 1 +
        (await Future.wait(<Future<int>>[
          levenshteinDistance(other.tail),
          tail.levenshteinDistance(other),
          tail.levenshteinDistance(other.tail),
        ]))
            .reduce(min);
  }
}
