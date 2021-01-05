// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:studying_widget_test/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    //print(tester.allWidgets);

    final textWidget = tester.widget<Widget>(
        find.text('You have pushed the button this many times:'));

    // Using all finders
    /* expect(
        find.ancestor(
          of: find.byType(FloatingActionButton),
          matching: find.byType(Scaffold),
        ),
        findsOneWidget); //1-1, 2-4
    expect(
        find.byElementPredicate(
            (widget) => widget is SingleChildRenderObjectElement),
        findsWidgets); //1-2, 2-5
    expect(find.byElementType(MultiChildRenderObjectElement),
        findsWidgets); //1-3, 2-5
    expect(find.byIcon(Icons.add), findsOneWidget); //1-4, 2-4
    expect(find.byKey(Key("Teste")), findsOneWidget); //1-5, 2-4
    expect(find.bySemanticsLabel("Counting value"), findsOneWidget); //1-6, 2-4
    expect(find.byTooltip("Testing w/ tooltip"), findsOneWidget); //1-7, 2-4
    expect(find.byType(Icon), findsOneWidget); //1-8, 2-4
    expect(find.byWidget(textWidget), findsOneWidget); //1-9, 2-4
    expect(
        find.byWidgetPredicate((widget) =>
            widget is FloatingActionButton && widget.tooltip == 'Increment'),
        findsOneWidget); //1-10, 2-4
    expect(
        find.descendant(
          of: find.byType(Column),
          matching: find.byType(Tooltip),
        ),
        findsOneWidget); //1-11, 2-4
    expect(find.text('0'), findsOneWidget); //1-12, 2-4
    expect(
        find.widgetWithIcon(RaisedButton, Icons.add), findsNothing); //1-13, 2-3
    expect(
        find.widgetWithText(
            Scaffold, "You have pushed the button this many times:"),
        findsOneWidget); //1-14, 2-4 */

    //Using all matchers
    expect(find.byType(Row), anything); //1-8, 2-1

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add)); //1-4,
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing); //1-2, 2-3
    expect(find.text('1'), findsOneWidget); //1-2, 2-4
  });
}

/* 
1 - # Common Finders (ou qualquer parâmetro do tipo Finder usado acima)

#
1 ancestor
2 byElementPredicate
3 byElementType
4 byIcon
5 byKey
6 bySemanticsLabel
7 byTooltip
8 byType
9 byWidget
10 byWidgetPredicate
11 descendant
12 text
13 widgetWithIcon
14 widgetWithText

2 - # Matchers

#
1 anything
2 clipsWithBoundingRect
3 findsNothing
4 findsOneWidget
5 findsWidgets
hasAGoodToStringDeep
hasNoImmediateClip
hasOneLineDescription
isArgumentError
isBrowser
isCastError
isConcurrentModificationError
isCyclicInitializationError
isEmpty
isException
isFalse
isFormatException
isInCard
isList
isMap
isNaN
isNegative
isNonNegative
isNonPositive
isNonZero
isNoSuchMethodError
isNotEmpty
isNotInCard
isNotNaN
isNotNull
isNull
isNullThrownError
isOffstage
isOnstage
isPositive
isRangeError
isStateError
isTrue
isUnimplementedError
isUnsupportedError
isZero
returnsNormally
throws
throwsArgumentError
throwsConcurrentModificationError
throwsCyclicInitializationError
throwsException
throwsFormatException
throwsNoSuchMethodError
throwsNullThrownError
throwsRangeError
throwsStateError
throwsUnimplementedError
throwsUnsupportedErr
*/
