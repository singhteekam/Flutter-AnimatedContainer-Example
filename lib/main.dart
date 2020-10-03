import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animated Container',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _color=Colors.pink[200];
  var _height=50.0;
  var _width=40.0;

  animate(){
    setState(() {
      _color=_color==Colors.pinkAccent?Colors.orangeAccent:Colors.pinkAccent;
      //_color=Colors.redAccent;
      _height=_height==150?80:150;
      _width=_width==150?80:150;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Animated Container Widget")
      ),
      body: Center(
        child:Column(children: <Widget>[
          Padding(padding: const EdgeInsets.only(top: 16),),
          AnimatedContainer(duration: Duration(seconds: 2),
          //child: Image.network("https://images.pexels.com/photos/3708924/pexels-photo-3708924.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
          color:_color,
          height: _height,
          width: _width,
          ),
          RaisedButton(onPressed: ()=>animate(),
          child: Text("Click Me"),),
          Padding(padding: const EdgeInsets.only(top: 90),),
          Text("Flutter is easy to learn",textAlign:TextAlign.center,
            style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
         Padding(padding: const EdgeInsets.only(top: 70),),
          Text("For more Flutter Widgets examples,follow singhteekam on GitHub",textAlign:TextAlign.center,
            style:TextStyle(color:Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
         Padding(padding: const EdgeInsets.only(top: 20),),
        ],)
      ),
    );
  }
}
