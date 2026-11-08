import 'package:flutter_test/flutter_test.dart';
import 'package:lab4_prm/main.dart';

void main() {
  testWidgets('shows product list on launch', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('iPhone 15'), findsOneWidget);
    expect(find.text('MacBook Air'), findsOneWidget);
  });
}
