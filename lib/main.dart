import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:splashscreen/splashscreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoadingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// loading page
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,     //5
      backgroundColor: Colors.white,
      imageBackground: AssetImage("assets/bg.jpg"),
      styleTextUnderTheLoader: TextStyle(
        fontSize: 25,
      ),
      image: Image.asset(
        "assets/icon.png",
        scale: 0.5,
      ),
      loaderColor: Colors.blue,
      navigateAfterSeconds: new MyHomePage(),
      loadingText: Text("Hang On! We are tuning some beats"),
      title: Text(
        "Xylophone",
        softWrap: true,
        textAlign: TextAlign.center,
        textScaleFactor: 3,
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
AudioCache player = AudioCache();

   @override
  void initState() {
    super.initState();
    // it orginates from assets folder
       player.loadAll([
      'a.wav',
      'b.wav',
      'c.wav',
      'c2.wav',
      'd1.wav',
      'e1.wav',
      'f.wav',
      'g.wav',
      'sweep.wav'
    ]);
    player.play('sweep.wav');
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
       return Scaffold(
     body: new Stack(
        children: <Widget>[
new Container(

       child: new AnimatedContainer(
        duration: Duration(milliseconds: 400),
        curve: Curves.bounceIn,
       
child: new Column(

  children: [
    new Expanded(
    child: Container(
      color: Colors.pink,
      child: new SizedBox(
  width: double.infinity,
      child: FlatButton(
           onPressed: () {
 AudioCache player = new AudioCache();
const alarmAudioPath = "a.wav";
player.play(alarmAudioPath);
            },
            child: Text(''),
      ),
      ),
    ),
    ),
    new Expanded(
   child: Container(
      color: Colors.purple,
      child: new SizedBox(
  width: double.infinity,
      child: FlatButton(
        onPressed: () {
               AudioCache player = new AudioCache();
const alarmAudioPath = "b.wav";
player.play(alarmAudioPath);
            },
            child: Text(''),
      ),
      ),
   ),
    ),
    new Expanded(
    child: Container(
      color: Colors.indigo[900],
      child: new SizedBox(
  width: double.infinity,
      child: FlatButton(
        onPressed: () {
               AudioCache player = new AudioCache();
const alarmAudioPath = "c.wav";
player.play(alarmAudioPath);
            },
            child: Text(''),
      ),
    ),
    ),
    ),
    new Expanded(
    child: Container(
      color: Colors.blue,
      child: new SizedBox(
  width: double.infinity,
      child: FlatButton(
        onPressed: () {
               AudioCache player = new AudioCache();
const alarmAudioPath = "c2.wav";
player.play(alarmAudioPath);
            },
            child: Text(''),
      ),
    ),
    ),
    ),
    new Expanded(
    child: Container(
      color: Colors.green,
      child: new SizedBox(
  width: double.infinity,
      child: FlatButton(
        onPressed: () {
               AudioCache player = new AudioCache();
const alarmAudioPath = "d1.wav";
player.play(alarmAudioPath);
            },
            child: Text(''),
      ),
    ),
    ),
    ),
    new Expanded(
    child: Container(
      color: Colors.yellow,
     child: new SizedBox(
  width: double.infinity,
      child: FlatButton(
        onPressed: () {
               AudioCache player = new AudioCache();
const alarmAudioPath = "e1.wav";
player.play(alarmAudioPath);
            },
            child: Text(''),
      ),
      ),
    ),
    ),
    new Expanded(
    child: Container(
      color: Colors.orange,
      child: new SizedBox(
  width: double.infinity,
      child: FlatButton(
         onPressed: () {
               AudioCache player = new AudioCache();
const alarmAudioPath = "f.wav";
player.play(alarmAudioPath);
            },
            child: Text(''),
      ),
    ),
    ),
    ),
     new Expanded(
    child: Container(
      color: Colors.red,
      child: new SizedBox(
  width: double.infinity,
      child: FlatButton(
         onPressed: () {
               AudioCache player = new AudioCache();
const alarmAudioPath = "g.wav";
player.play(alarmAudioPath);
            },
            child: Text(''),
      ),
    ),
    ),
    ),
  ],
),
          ),

          ),
          
        ],
     ),
    );
  }
}
