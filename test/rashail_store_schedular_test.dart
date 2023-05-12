import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:rashail_store_schedular/rashail_store_schedular.dart';

void main() {
  test('', () {
    StoreScheduler(
      onChangeValue: (List<dynamic> value) {
        if (kDebugMode) {
          print(value);
        }
      },
    );
  });
}
