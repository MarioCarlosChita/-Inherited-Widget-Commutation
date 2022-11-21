import 'package:flutter/material.dart';
import 'package:inherigwidget/provider_data.dart';


class CounterViewPage extends StatelessWidget{
  const CounterViewPage();
  @override
  Widget build(BuildContext context) {
    Size media =MediaQuery.of(context).size;
    ProviderData? providerData =ProviderData.of(context);

    return Container(
       width: media.width,
       height:60,
       alignment: Alignment.center,
       child: Text(providerData!.counter.toString(),style: const TextStyle(
         color: Colors.black,
         fontSize: 42
       ),),
    );
  }
}