import 'package:test/test.dart';
import 'package:dartify_plus/dartify_plus.dart';

void main() {
  group('Type Casting Tests', () {
    test('tryInt with valid input', () {
      expect(tryInt('123'), equals(123));
      expect(tryInt(456), equals(456));
    });

    test('tryInt with invalid input', () {
      expect(tryInt('abc'), isNull);
      expect(tryInt(null), isNull);
    });

    test('tryString with valid input', () {
      expect(tryString(123), equals('123'));
      expect(tryString(true), equals('true'));
    });

    test('tryString with null input', () {
      expect(tryString(null), isNull);
    });

    test('tryBool with valid input', () {
      expect(tryBool('true'), isTrue);
      expect(tryBool('false'), isFalse);
      expect(tryBool(1), isTrue);
      expect(tryBool(0), isFalse);
    });

    test('tryBool with invalid input', () {
      expect(tryBool('yes'), isNull);
    });
  });

  group('Custom Caster Tests', () {
    setUp(() {
      TypeCasterRegistry.instance.clear();
    });

    test('Register and use custom caster', () {
      TypeCasterRegistry.instance.register<int>((value, {orElse}) {
        if (value is String && value.startsWith('num:')) {
          return int.parse(value.substring(4));
        }
        return orElse?.call() ?? (throw CastException(value, 'int'));
      });

      expect(tryAs<int>('num:123'), equals(123));
      expect(tryAs<int>('invalid', orElse: () => 0), equals(0));
    });

    test('Unregister custom caster', () {
      TypeCasterRegistry.instance.register<int>((value, {orElse}) => 42);
      TypeCasterRegistry.instance.unregister<int>();

      expect(tryAs<int>('any'), isNull);
    });
  });
}
