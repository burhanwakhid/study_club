import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/shared/shared.dart';

class FlutterBasicPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          /// 1. Container
          Text('Container', style: kTitleStyle,),
          Container(
            width: double.infinity,
            height: size.height/4,
            color: Colors.red,
            child: Center(child: Text('Basic Container')),
          ),
          SizedBox(height: 7,),
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(color: Colors.black),
                BoxShadow(color: Colors.pink),
              ]   
            ),
            width: double.infinity,
            height: size.height/4,
            child: Center(child: Text('decoration Container')),
          ),


          /// 2. Column
          Divider(),
          SizedBox(height: 8,),
          Text('Column', style: kTitleStyle,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('text 1'),
              Text('text 2'),
              Text('text 3'),
              Text('text 4'),
              Text('text 5'),
              Text('text 6'),
              Text('text 7'),
            ],
          ),
          /// 3. Row
          Divider(),
          SizedBox(height: 8,),
          Text('Row', style: kTitleStyle,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlineButton(
                onPressed: (){
                  _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('ini namanya snackbar'),));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6))
                ),
                child: Text('Outline Button'),
              ),
              RaisedButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6))
                ),
                child: Text('Raised Button'),

              )
            ],
          ),
          /// 4. Horizontal ListView Builder
          Divider(),
          SizedBox(height: 8,),
          Text('Horizontal ListView Builder', style: kTitleStyle,),
          Container(
            height: 400,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red,
                    width: size.width-55,
                    height: 300,
                    child: Text('index: ${index.toString()}'),
                  ),
                );
              },
            )
          ),
          /// 5. Card
          Divider(),
          SizedBox(height: 8,),
          Text('Card', style: kTitleStyle,),
          Card(
            elevation: 4.0,
            child: Column(
              children: [
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            ),
          )
          /// 6. Navigator
          /// 7. Stack
        ],
      ),
    );
  }
}