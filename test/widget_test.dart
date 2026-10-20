import 'package:flutter_test/flutter_test.dart';
import 'package:bkash/main.dart';

void main() {
  testWidgets('home screen renders', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump(const Duration(milliseconds: 500));

    expect(find.text('Services'), findsOneWidget);
    expect(find.text('Send Money'), findsWidgets);
  });
}
