import 'package:flutter_test/flutter_test.dart';
import 'package:locator/app/app.dart';
import 'package:locator/bottom_tab_bar/bottom_tab_bar.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(BottomBar), findsOneWidget);
    });
  });
}
