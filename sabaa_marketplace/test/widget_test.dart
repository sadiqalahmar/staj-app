import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sabaa_marketplace/main.dart';

void main() {
  testWidgets('SABAA Marketplace app launches', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(
      child: SabaaMarketplaceApp(),
    ));

    expect(find.byType(SabaaMarketplaceApp), findsOneWidget);
  });
}
