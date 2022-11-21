import 'package:flutter/cupertino.dart';

class ProviderData extends InheritedWidget{
  ProviderData({required super.child , required this.counter});
  int counter;

  static ProviderData? of (BuildContext context)=>  context.dependOnInheritedWidgetOfExactType<ProviderData>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {return oldWidget != this;}

}