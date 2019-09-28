import 'package:flutter/material.dart';
import 'TasbihBloc.dart';
import 'TasbihProvider.dart';

class Tasbih extends StatefulWidget {
  _TasbihState createState() => _TasbihState();
}

class _TasbihState extends State<Tasbih> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.getData,
      initialData: TasbihProvider().penambahan(),
      builder: (context, snapshot) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text('${snapshot.data}',
            style: TextStyle(
              fontSize: 200,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),


          ],
        ),
      ),
    );
  }
}