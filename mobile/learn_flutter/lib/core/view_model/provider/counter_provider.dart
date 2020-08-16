import 'package:flutter/widgets.dart';


class CounterProvider extends ChangeNotifier{
  int _counter = 0;
  
  int get counter => _counter;
  set counter(int val){
    _counter =val;
    notifyListeners();
  }

  void increment(){
    counter = counter+1;
  }

  void decrement(){
    counter -=1;
  }
}