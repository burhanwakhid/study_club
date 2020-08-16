import 'package:flutter/material.dart';
import 'package:learn_flutter/config/router.dart';

class HomePage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    /// GET SIZE OF THE SREEN
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(),
      drawer: _buildDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _builMenu(
              size,
              'Flutter Basic',
              'dasar-dasar flutter',
              ()=> Navigator.pushNamed(context, Router.flutterBasic)
            ),
            SizedBox(height: 9,),
            _builMenu(
              size,
              'Flutter State Management',
              'dasar-dasar flutter',
              ()=> Navigator.pushNamed(context, Router.listMenuState)
            ),
            SizedBox(height: 9,),
            _builMenu(
              size,
              'Flutter Http Request',
              'dasar-dasar flutter',
              (){
                _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Coming soon'),));
              }
            ),
            SizedBox(height: 9,),
            _builMenu(
              size,
              'Flutter Local Storage',
              'dasar-dasar flutter',
              (){
                _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Coming soon'),));
              }
            )
          ],
        ),
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

  Drawer _buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          Stack(
            children: [
              Positioned(
                left: 10,
                child: Transform(
                  transform: Matrix4.rotationZ(-0.174533),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                ),
              ),
              Text('data')
            ],
          ),
          // UserAccountsDrawerHeader(
          //   accountName: Text('data'), 
          //   accountEmail: Text('data'),
          //   decoration: BoxDecoration(

          //   ),
          // )
        ],
      )
    );
  }

}