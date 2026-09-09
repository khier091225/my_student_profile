// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_student_profile/main.dart';

void main() {
  testWidgets('Student profile displays its main content', (
    WidgetTester tester,
  ) async {
    // Build the app.
    await tester.pumpWidget(const MyApp());

    // Check the title and student information.
    expect(find.text('Student Profile'), findsOneWidget);
    expect(find.text('Kiervin P. Dixon'), findsOneWidget);
    expect(find.text('BS Information Technology'), findsOneWidget);

    // "Skills" appears in both the statistics and the section heading.
    expect(find.text('Skills'), findsNWidgets(2));

    // Check that each listed skill appears as a chip.
    for (final skill in ['Flutter', 'Dart', 'HTML', 'CSS', 'UI/UX']) {
      expect(find.widgetWithText(Chip, skill), findsOneWidget);
    }

    // Scroll to the button so it is visible in the test viewport.
    final profileButton = find.widgetWithText(ElevatedButton, 'View Profile');

    expect(profileButton, findsOneWidget);
    await tester.ensureVisible(profileButton);
    await tester.pumpAndSettle();

    // Check that the visible button can receive a tap.
    expect(profileButton.hitTestable(), findsOneWidget);
  });
}
