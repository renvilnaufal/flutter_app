import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: View()
        )
    );
  }
}

class View extends StatefulWidget {
  ViewState createState() => ViewState();
}

class ViewState extends State{
  Color colorCode = Color(0xFF01579B);
  final Random random = Random();
  generateRandomColor(){
    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    ) ;

    setState(() {
      colorCode = tmpColor ;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorCode,
        appBar: AppBar(
            backgroundColor: Colors.pink,
            title: Text('Hi Renvil from PT Liberty Jaya'
            )),
        body: Center(
            child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child:
                RaisedButton(
                  onPressed: () => generateRandomColor(),
                  child: Text('Tap1'),
                  textColor: Colors.white,
                  color: Colors.pink,
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                ))
        )
    );
  }
}




//import 'package:flutter/material.dart';
//
//void main() => runApp(MaterialApp(
//
//  home: Home(),
//
//));
//var warna;
//class Home extends StatelessWidget{
//
//  @override
//  Widget build(BuildContext context){
//
//    return Scaffold(
//
//        appBar: AppBar(
//          title: Text('Hello Renvil dari PT.Liberty Jaya'),
//          centerTitle: true,
//          backgroundColor: Colors.purple[700],
//        ),
//
//        body: Container(
//          color: warna == 1 ? Colors.red : Colors.blue,
//          child: Row(
//            children: [
//              FlatButton(
//                child: Text('Klik'),
//                onPressed: (){
//
//                  warna = warna == 1 ? 0 : 1;
//                },
//
//              ),
//
//              Text(warna.toString()),
//
//            ],
//          ),
//        ),
//
//        floatingActionButton: FloatingActionButton(
//          onPressed: (){
//            warna = warna == 1 ? 0 : 1;
//          },
//
//          child: Text('Tap1'),
////          Image.asset('assets/andrew.jpg'),
//
//        )
//
//
//
//
//    );
//  }
//
//
//}