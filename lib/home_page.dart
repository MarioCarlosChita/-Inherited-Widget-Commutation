import  'package:flutter/material.dart';
import 'package:inherigwidget/provider_data.dart';

import 'counter_view_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  int counter  = 0 ;
  @override
  Widget build(BuildContext context) {
    ProviderData ? _providerData = ProviderData.of(context);
    return  ProviderData(
        counter: counter ,
        child: Scaffold(
          body: Container(
           child: Center(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: const [
                 CounterViewPage(),
                 SizedBox(height:20),
               ],
             ),
           ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: ()=> _increment(),
            child: const Icon(Icons.add,color: Colors.white,),
          ),
        ),
    ) ;
  }



  void _increment(){
    setState(() {
      counter ++;
    });
  }
}
