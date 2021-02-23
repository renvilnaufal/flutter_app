import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: Home(),

));
var warna;
class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(
        title: Text('Hello Renvil dari PT.Liberty Jaya'),
        centerTitle: true,
        backgroundColor: Colors.purple[700],
      ),

        body: Container(
            color: warna == 1 ? Colors.red : Colors.blue,
            child: Row(
              children: [
                FlatButton(
                  child: Text('Klik'),
                  onPressed: (){
                    warna = warna == 1 ? 0 : 1;
                  },
                ),
                Text(warna.toString()),
              ],
            ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            warna = warna == 1 ? 0 : 1;
          },

          child: Text('Tap1'),
//          Image.asset('assets/andrew.jpg'),

        )




    );
  }


  }


