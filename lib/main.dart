import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Flutter training EP1"),
            ),
            body: Column(
              children: <Widget>[
                Text(
                  'Hello Rami How are you?',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 13, 63, 212),
                  size: 32.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                // Image(
                //   image: NetworkImage(
                //       'https://i.postimg.cc/6pwFSD7n/Capture-1.png'),
                // ),
                Image.asset('/Capture.png'),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("École pluridisciplinaire internationale",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              '#EPI',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[Icon(Icons.star), Text('4100')],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.call, color: Colors.blue),
                      Container(
                          child: Text(
                        'Call',
                        style: TextStyle(color: Colors.blue),
                        textAlign: TextAlign.center,
                      )),
                      Icon(Icons.ios_share, color: Colors.blue),
                      Text(
                        'Share',
                        style: TextStyle(color: Colors.blue),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  child: Wrap(
                    children: <Widget>[
                      Text(
                        'Lorem ips tempor incididunt ut labore et dolore magna aliqua. Ut enim aincididunt ut labore et dolincididunt ut labore et dolore magnaore magnad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex',
                        style: TextStyle(fontWeight: FontWeight.normal),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.visible,
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
