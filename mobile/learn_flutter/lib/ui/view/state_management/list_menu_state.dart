import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/view/state_management/bloc_ui/counter_bloc_page.dart';
import 'package:learn_flutter/ui/view/state_management/provider_ui/provider_page.dart';

class ListMenuState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          _builMenu(size, 'counter bloc', 'subtitle', () => Navigator.push(context, MaterialPageRoute(builder: (_)=> CounterBlocPage()))),
          SizedBox(height: 9,),
          _builMenu(size, 'counter provider', 'subtitle', () => Navigator.push(context, MaterialPageRoute(builder: (_)=> CounterProviderPage())))
        ],
      ),
    );
  }

  InkWell _builMenu(Size size, String title, String subtitle, Function onTap) {
    return InkWell(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            height: size.height/5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.grey)
            ),
            child: ListTile(
              title: Text('$title'),
              subtitle: Text('$subtitle'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        );
  }
}