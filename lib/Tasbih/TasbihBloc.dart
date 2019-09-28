import 'dart:async';
import 'TasbihProvider.dart';

class TasbihBloc{
  final controller = StreamController();
  final TasbihProvider provider = TasbihProvider();

  Stream get getData => controller.stream;

  void update(){
    provider.penambahan();
    controller.sink.add(provider.nilai);
  }

  void dispose(){
    controller.close();
  }
  
}
final bloc = TasbihBloc();