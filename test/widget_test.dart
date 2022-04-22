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
    /* expect(find.byType(Row), anything); //1-8, 2-1
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

    expect(true, isNot(isBrowser)); //2-10

    expect(await tester.runAsync<List<String>>(() async => testForCastError()),
        isNull);
    expect(tester.takeException(), isA<TypeError>()); //2-11

    expect(
        await tester
            .runAsync<int>(() async => testForConcurrentModificationError()),
        isNull);
    expect(tester.takeException(), isConcurrentModificationError); //2-12
    //2-13
    expect('', isEmpty); //2-14
    expect(<int>[], isEmpty); //2-14

    expect(await tester.runAsync<int>(() async => testForException()), isNull);
    expect(tester.takeException(), isException); //2-15 
    expect('' is int, isFalse); //2-16
    expect(
        await tester.runAsync<DateTime>(() async => testForFormatException()),
        isNull);
    expect(tester.takeException(), isFormatException); //2-17
    expect(find.byKey(Key('2-18')), isInCard); //2-18
    expect(<int>[2, 19], isList); //2-19
    expect({'teste': '2-20'}, isMap); //2-20
    expect(0.0 / 0.0, isNaN); //2-21
    expect(-2.22, isNegative); //2-22
    expect(2.23, isNonNegative); //2-23
    expect(-2.25, isNonPositive); //2-24
    expect(2.26, isNonZero); //2-25

    expect(await tester.runAsync<int>(() async => ('' as dynamic).toInt()),
        isNull);
    expect(tester.takeException(), isNoSuchMethodError); //2-26

    expect('Não vazio', isNotEmpty); //2-27
    expect(find.byType(Tooltip), isNotInCard); //2-28
    expect(2.29, isNotNaN); //2-29
    expect({'name': 'Adby'}['name'], isNotNull); //2-30 
    expect({'name': null}['name'], isNull); //2-31

    expect(await tester.runAsync<int>(() async => throw null), isNull);
    expect(tester.takeException(), isNullThrownError); //2-32

    //2-33 e 2-34
    /* await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    await tester.tap(find.text('Tab 2'));
    await tester.pump();

    await tester.tap(find.text('Next'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    expect(find.text('Page 2 of tab 2'), isOnstage); //2-34
    expect(find.text('Page 1 of tab 1', skipOffstage: false), isOffstage); //2-33

    /*Precisa do Scaffold para aparecer o botão de voltar
    Não poderia ter somente a CupertinoTabBar para usar*/
    await tester.pageBack(); 
    await tester.pump(); //2-33 e 2-34 */

    expect(-1 + 1.1, isPositive); //2-35

    expect(
        await tester.runAsync<int>(() async => testForArgumentOrRangeError()),
        isNull);
    expect(tester.takeException(), isRangeError); //2-36

    expect(StateError("state error"), isStateError); //2-37
    expect(1 == 1.0, isTrue); //2-38

    expect(
        await tester
            .runAsync<StackTrace>(() async => TestingErrors().stackTrace),
        isNull);
    expect(tester.takeException(), isUnimplementedError); //2-39

    expect(
        await tester.runAsync<StackTrace>(
            () async => throw UnsupportedError("unsupported error")),
        isNull);
    expect(tester.takeException(), isUnsupportedError); //2-40

    expect(0, isZero); //2-41
    expect(() => true, returnsNormally); //2-42
    expect(() => throw ArgumentError(), throwsA(isA<ArgumentError>())); //2-43

    //É possível substituir todos os throws etcetc por throwsA(isA<etcetc>)
    expect(() => throw ArgumentError(), throwsArgumentError); //2-44
    expect(() => throw ConcurrentModificationError(),
        throwsConcurrentModificationError); //2-45
    expect(() => throw CyclicInitializationError(),
        throwsCyclicInitializationError); //2-46
    expect(() => throw Exception(), throwsException); //2-47
    expect(() => throw FormatException(), throwsFormatException); //2-48
    expect(() => ('' as dynamic).toInt(), throwsNoSuchMethodError); //2-49
    expect(() => throw NullThrownError(), throwsNullThrownError); //2-50
    expect(() => throw RangeError('range errror'), throwsRangeError); //2-51
    expect(() => throw StateError('state error'), throwsStateError); //2-52
    expect(() => TestingErrors().stackTrace, throwsUnimplementedError); //2-53
    expect(() => throw UnsupportedError('unsupported error'),
        throwsUnsupportedError); //2-54 */

    //3 - # WidgetTester functions
    //3-1
    /*final Ticker ticker = tester.createTicker((Duration duration) {
      print(5);
    });
    ticker.start();
    ticker.dispose();
    //tester.verifyTickersWereDisposed(''); */

    //3-2 TODO
    //tester.dispatchEvent(PointerDownEvent(), HitTestResult()..add();

    //3-3
    await tester.enterText(find.byKey(Key('3-3')), 'teste 3-3');

    //3-4
    await tester.getRestorationData();
    //Precisa colocar RootRestorationScope como pai da árvore (e.g. home: Root...)

    //3-5 TODO
    //tester.handlePointerEventRecord(records)

    //3-5
    print(tester.any(find.text('3-5'))); //false

    //3-6
    await tester
        .tapAt(Offset(0, 100)); //Offset inicia do lado superior esquerdo

    //3-7
    print(tester.binding.clock.now());

    // Tap the '+' icon and trigger a frame.
    //await tester.tap(find.byIcon(Icons.add)); //1-4,
    //await tester.pump();

    // Verify that our counter has incremented.
    //expect(find.text('0'), findsNothing); //1-2, 2-3

    expect(find.text('0'), findsOneWidget); //1-2, 2-4
  });
}

int testForArgumentOrRangeError() {
  final list = <int>[1, 2];
  return list[2];
}

List<String> testForCastError() {
  final list = <int>[1, 2];
  return list.map((e) => e - 1).cast<String>().toList();
}

int testForConcurrentModificationError() => throw ConcurrentModificationError();
int testForException() => (1 ~/ 0);
DateTime testForFormatException() => DateTime.parse('formato, incorreto');

class TestingErrors implements Error {
  @override
  StackTrace get stackTrace => throw UnimplementedError();
}

/* 
1 - # Common Finders (e.g. qualquer parâmetro do tipo Finder usado acima)

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
11 isCastError (deprecated) -> isA<TypeError>()
12 isConcurrentModificationError
    Issue relacionada: https://github.com/flutter/flutter/issues/59601
13 isCyclicInitializationError 
    Doc: https://api.flutter.dev/flutter/dart-core/CyclicInitializationError-class.html
    Não achei muito sobre
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
26 isNoSuchMethodError
27 isNotEmpty
28 isNotInCard
29 isNotNaN
30 isNotNull
31 isNull
32 isNullThrownError
33 isOffstage
34 isOnstage
35 isPositive
36 isRangeError
37 isStateError
    Doc: https://api.flutter.dev/flutter/dart-core/StateError-class.html
    Exemplo de uso: https://github.com/flutter/flutter/blob/b3bd9e6924cd423baba92a6ddc35db1542ed0f30/packages/flutter/test/painting/image_provider_test.dart
38 isTrue
39 isUnimplementedError
40 isUnsupportedError
41 isZero
42 returnsNormally
43 throws (deprecated) 
    -> throwsA(isA<ArgumentError>)
44 throwsArgumentError
45 throwsConcurrentModificationError
46 throwsCyclicInitializationError
47 throwsException
48 throwsFormatException
49 throwsNoSuchMethodError
50 throwsNullThrownError
51 throwsRangeError
52 throwsStateError
53 throwsUnimplementedError
54 throwsUnsupportedError
*/

/*
3 - WidgetTester functions

1 createTicker
    Exemplo: https://github.com/flutter/flutter/blob/8998167d0fafb5b4e6b9ea2b3535c740db131602/packages/flutter_test/test/widget_tester_test.dart

// SOON
*/
