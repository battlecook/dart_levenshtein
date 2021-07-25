import 'package:levenshtein_distance/dart_levenshtein.dart';
import 'package:test/test.dart';

void main() {
  group('String extension tests', () {
    test('Same length 1 character changes', () async {
      expect(await 'kitten'.levenshteinDistance('sitten'), 1);
      expect(await 'sitten'.levenshteinDistance('kitten'), 1);
    });
    test('Same word', () async {
      expect(await 'kitten'.levenshteinDistance('kitten'), 0);
    });
    test('Same length will totaly different characters', () async {
      expect(await 'kaan'.levenshteinDistance('idil'), 4);
      expect(await 'idil'.levenshteinDistance('kaan'), 4);
    });
    test('Different lengths same prefix', () async {
      expect(await 'f'.levenshteinDistance('foo'), 2);
      expect(await 'foo'.levenshteinDistance('f'), 2);
    });
    test('Different lengths same suffix', () async {
      expect(await 'o'.levenshteinDistance('foo'), 2);
      expect(await 'foo'.levenshteinDistance('o'), 2);
    });
  });
  group('Function tests', () {
    test('Same length 1 character changes', () async {
      expect(await levenshteinDistance('kitten', 'sitten'), 1);
      expect(await levenshteinDistance('sitten', 'kitten'), 1);
    });
    test('Same word', () async {
      expect(await levenshteinDistance('kitten', 'kitten'), 0);
    });
    test('Same length will totaly different characters', () async {
      expect(await levenshteinDistance('kaan', 'idil'), 4);
      expect(await levenshteinDistance('idil', 'kaan'), 4);
    });
    test('Different lengths same prefix', () async {
      expect(await levenshteinDistance('f', 'foo'), 2);
      expect(await levenshteinDistance('foo', 'f'), 2);
    });
    test('Different lengths same suffix', () async {
      expect(await levenshteinDistance('o', 'foo'), 2);
      expect(await levenshteinDistance('foo', 'o'), 2);
    });
  });
}
