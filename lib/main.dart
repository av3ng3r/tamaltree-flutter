import 'package:flutter/material.dart';

const String _AccountName = 'Abinash Mohapatra';
const String _AccountEmail = 'iabinashmohapatra@gmail.com';
const String _AccountAbbr = 'AM';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Tamaltree',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Tamaltree'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
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
	Drawer drawer = new Drawer(
			child: new Column(children: <Widget>[
				new UserAccountsDrawerHeader(
					accountName: const Text(_AccountName),
					accountEmail: const Text(_AccountEmail),
					currentAccountPicture: new CircleAvatar(
						backgroundColor: Colors.brown,
						child: new Text(_AccountAbbr)
					),
				)
			])
	);
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
        actions: <Widget>[
          new IconButton(
            icon: new IconTheme(
              data: new IconThemeData(color: Colors.white),
              child: new Icon(Icons.search),
            ),
            //onPressed: _airDress,
          ),
          new IconButton(
            icon: new IconTheme(
              data: new IconThemeData(color: Colors.white),
              child: new Icon(Icons.message),
            ),
            //onPressed: _restitchDress,
          ),
          new IconButton(
            icon: new IconTheme(
              data: new IconThemeData(color: Colors.white),
              child: new Icon(Icons.supervised_user_circle),
            ),
            //onPressed: _repairDress,
          ),
        ],
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      drawer: drawer,/*Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              leading: Icon(Icons.restaurant),
              title: Text('Item 1',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)
              ),
            ),
            ListTile(
              leading: Icon(Icons.restaurant),
              title: Text('Item 1',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)
              ),
            ),
          ],
        ),
      ),*/
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add_alert),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
