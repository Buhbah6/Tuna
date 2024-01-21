import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



void main() {
  Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(), // Start with the SplashScreen
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Use Future.delayed to wait for 5 seconds before navigating to the next screen
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen(), // Navigate to HomeScreen
      ));
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: 
        Stack(
          
        alignment: Alignment.center,
        children: [
            Positioned(
                left: 73,
                top: 263,
                child: Container(
                    width: 284,
                    height: 406,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 284,
                                    height: 406,
                                    decoration: ShapeDecoration(
                                        color: Color(0xEFE28941),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: -12,
                                top: -8,
                                child: Container(
                                    width: 311,
                                    height: 429,
                                    decoration: BoxDecoration(color: Color(0xFFE99149)),
                                ),
                            ),
                            Positioned(
                                left: -19,
                                top: -21,
                                child: Container(
                                    width: 113,
                                    height: 115,
                                    decoration: ShapeDecoration(
                                        color: Color(0x99CD6023),
                                        shape: OvalBorder(),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 196,
                                top: 347,
                                child: Container(
                                    width: 65,
                                    height: 67,
                                    decoration: ShapeDecoration(
                                        color: Colors.white.withOpacity(0.25),
                                        shape: OvalBorder(),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 146,
                top: 605,
                child: Container(
                    width: 138,
                    height: 36,
                    decoration: ShapeDecoration(
                        color: Color(0xFF3E2BA4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 177,
                top: 311,
                child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                    ),
                ),
            ),
            Positioned(
                left: 196,
                top: 614,
                child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                    ),
                ),
            ),
            Positioned(
                left: 119,
                top: 397,
                child: Container(
                    width: 194,
                    height: 31,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 194,
                                    height: 31,
                                    decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 15,
                                top: 6,
                                child: Text(
                                    'Username',
                                    style: TextStyle(
                                        color: Color(0xFF5C5C5C),
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 118,
                top: 451,
                child: Container(
                    width: 194,
                    height: 31,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 194,
                                    height: 31,
                                    decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 16,
                                top: 6,
                                child: Text(
                                    'Password',
                                    style: TextStyle(
                                        color: Color(0xFF5C5C5C),
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 139,
                top: 511,
                child: Container(
                    width: 155,
                    height: 34,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.50, color: Color(0xFFA3A3A3)),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 139,
                top: 545,
                child: Container(
                    width: 155,
                    height: 34,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.50, color: Color(0xFFA8A8A8)),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 125,
                top: 695,
                child: Text(
                    'No account yet? Register',
                    style: TextStyle(
                        color: Color(0xFF5C5C5C),
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                    ),
                ),
            ),
        ],
    ),
)
      );  
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

  void _initializeFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
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
