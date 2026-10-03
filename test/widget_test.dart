import 'package:flutter_test/flutter_test.dart';
import 'package:design_patterns_mini_project_final/main.dart';

void main() {
  testWidgets('DesignPatternsApp smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const DesignPatternsApp());

    // Verify that dashboard title is shown.
    expect(find.text('Design Patterns & Clean Architecture'), findsOneWidget);
  });
}
