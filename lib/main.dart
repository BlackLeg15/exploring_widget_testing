import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RootRestorationScope(
        restorationId: '3-4',
        child: MyHomePage(
          title: 'Flutter Demo Home Page',
          key: Key("Teste"),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                'Dead counter',
                style: Theme.of(context).textTheme.headline4,
                semanticsLabel: "Counting value",
              ),
              Tooltip(
                message: "Testing w/ tooltip",
              ),
              Material(
                key: Key("1-8, 2-7"),
                type: MaterialType.transparency,
                child: const SizedBox(width: 100.0, height: 100.0),
              ),
              Card(
                child: Container(
                  key: Key('2-18'),
                ),
              ),
              TextField(
                key: Key('3-3'),
                onChanged: (value) => print('3-3 onChanged: $value'),
              ),
            ],
          )),
          Positioned(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width / 2,
            child: ElevatedButton(
              child: Text("Olá, mano"),
              onPressed: () => print('Olá, mano'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MyOtherPage()));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomSheet: Material(
        key: Key("1-8, 2-2"),
        type: MaterialType.transparency,
        clipBehavior: Clip.hardEdge,
      ),
    );
  }
}

class MyOtherPage extends StatelessWidget {
  MyOtherPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.water_damage),
              label: 'Tab 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Tab 2',
            ),
          ],
        ),
        tabBuilder: (context, index) {
          ++index;
          return CupertinoTabView(
            builder: (BuildContext context) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text('Page 1 of tab $index'),
                ),
                child: Center(
                  child: CupertinoButton(
                    child: const Text('Next'),
                    onPressed: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute<void>(
                          builder: (BuildContext context) {
                            return CupertinoPageScaffold(
                              navigationBar: CupertinoNavigationBar(
                                middle: Text('Page 2 of tab $index'),
                              ),
                              child: Center(
                                child: CupertinoButton(
                                  child: const Text('Back'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
