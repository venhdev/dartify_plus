# Dartify Plus

Dartify Plus is a Dart package offering utilities for type casting, string manipulation, date-time handling, and more to simplify development.

## Features

- Type casting utilities
- String manipulation helpers
- Date-time utilities
- Extensions for collections (List, Map, Set)
- Logging utilities with colored output

## Getting started

To use Dartify Plus, add it as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  dartify_plus: ^0.0.1-alpha
```

Then, run `flutter pub get` or `dart pub get` to fetch the package.

## Usage

Here is a quick example of how to use Dartify Plus:

```dart
import 'package:dartify_plus/dartify_plus.dart';

void main() {
  // Example: String manipulation
  String result = 'hello'.capitalize();
  print(result); // Output: Hello

  // Example: Type casting
  int? value = TypeCaster.cast<int>('123');
  print(value); // Output: 123
}
```

For more examples, check the `/example` folder.

## Documentation

### Modules Overview

- **Type Caster**: Provides utilities for safe type casting.
- **String Utilities**: Includes helpers for string manipulation like `capitalize` and `toSnakeCase`.
- **Date-Time Utilities**: Offers functions for parsing and formatting dates.
- **Collection Extensions**: Adds useful methods for `List`, `Map`, and `Set`.
- **Logging**: Features a colored logger for better debugging.

For detailed documentation, visit the [API Reference](https://pub.dev/documentation/dartify_plus/latest/).

## Additional information

For more details, visit the [documentation](https://pub.dev/packages/dartify_plus) or file issues on the [GitHub repository](https://github.com/venhdev/dartify_plus). Contributions are welcome!
