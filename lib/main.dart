import 'package:flutter/material.dart';
import 'Tasbih/Tasbih.dart';
import 'Tasbih/TasbihBloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tasbih Digital',
      home: Layout(),
    );
  }
}

class Layout extends StatefulWidget {
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[

        new Container(
          height: double.infinity,
          width: double.infinity,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/kabah.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Scaffold(
      backgroundColor: Colors.transparent,

      appBar: AppBar(
        title: Text('TASBIH DIGITAL'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),

      body: Container(
        color: Colors.transparent,
        child: Tasbih(),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: (){
          bloc.update();
        },
        tooltip: "Tambah",
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),


      ],
    );
  }
}
