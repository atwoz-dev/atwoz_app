import 'package:atwoz_app/app/app.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

// TODO: 현재 거의 테스트된 거 없는 수준
void main() {
  setUpAll(() async {
    // Hive를 로컬 경로로 초기화
    Hive.init('/mocked_hive_path');
  });

  tearDownAll(() async {
    await Hive.close();
  });

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: App(),
      ),
    );
  });
}
