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

/*    final GlobalKey materialKey = GlobalKey();
    await tester.pumpWidget(
      Material(
        key: materialKey,
        type: MaterialType.transparency,
        child: const SizedBox(width: 100.0, height: 100.0),
        clipBehavior: Clip.antiAlias,
      ),
    );

    expect(find.byKey(materialKey), clipsWithBoundingRect); */

    /* final textWidget = tester.widget<Widget>(
        find.text('You have pushed the button this many times:'));

    // Using all finders
    expect(
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
    expect(find.byKey(Key("1-8, 2-2")), clipsWithBoundingRect); //1-5, 2-2
    expect(
        find.widgetWithIcon(RaisedButton, Icons.add), findsNothing); //1-13, 2-3
    expect(find.byIcon(Icons.add), findsOneWidget); //1-4, 2-4
    expect(find.byType(Text), findsNWidgets(3)); //1-8, 2-5
    //2-6*
    expect(find.byKey(Key("1-8, 2-7")), hasNoImmediateClip); //1-5, 2-7
    expect(find.byType(Tooltip), hasOneLineDescription); //1-5, 2-8
    expect(Object(), isNot(hasOneLineDescription)); //2-8
    expect(
        await tester.runAsync<int>(() async => testForArgumentError()), isNull);
    expect(tester.takeException(),
        isArgumentError); //2-9 Captura o erro jogado pela função acima
    expect(false, isBrowser); //1-5, 2-10

    print(Tooltip(message: "q"));

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add)); //1-4,
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing); //1-2, 2-3
    expect(find.text('1'), findsOneWidget); //1-2, 2-4
  });
}

int testForArgumentError() => throw ArgumentError();

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
6* hasAGoodToStringDeep -> Esse matcher é bem específico
    Doc aqui: https://api.flutter.dev/flutter/flutter_test/hasAGoodToStringDeep-constant.html
    Exemplo de uso aqui: https://github.com/flutter/flutter/blob/099ae9b4179467b5cc9a6a4be19f75763a6c3d28/packages/flutter_test/test/matchers_test.dart
    Está anotado na pasta Widget Test o porquê de ser necessário o transparency e o hardEdge
    Existem vários outros exemplos nesse repositório do Flutter
7 hasNoImmediateClip
8 hasOneLineDescription
    Doc aqui: https://api.flutter.dev/flutter/flutter_test/hasOneLineDescription-constant.html
9 isArgumentError
10 isBrowser
11 isCastError
12 isConcurrentModificationError
13 isCyclicInitializationError
14 isEmpty
15 isException
16 isFalse
17 isFormatException
18 isInCard
19 isList
20 isMap
21 isNaN
22 isNegative
23 isNonNegative
24 isNonPositive
25 isNonZero
26isNoSuchMethodError
27 isNotEmpty
28 isNotInCard
29 isNotNaN
30 isNotNull
31 isNull
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
