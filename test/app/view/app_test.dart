import 'package:flutter_test/flutter_test.dart';
import 'package:ugly_english/app/app.dart';
import 'package:ugly_english/home/home.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
