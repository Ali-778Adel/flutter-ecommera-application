import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/components/AppSignIn.dart';
import 'package:flutterecommerceapp/screens/WishListScreen.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../main.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .60,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createDrawerHeader(),
            _createDrawerItem(
                icon: Icons.home,
                text: 'Home',
                subtiletext: 'go to categories list',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    )),
            _createDrawerItem(
                icon: FontAwesomeIcons.user,
                text: 'Sign In',
                subtiletext: 'go to signin page',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AppSignIn()),
                    )),
            _createDrawerItem(
                icon: Icons.favorite_border,
                text: 'Wish List',
                subtiletext: 'go to your favourite products',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WishListScreen()),
                    )),
            _createDrawerItem(
                icon: Icons.call,
                text: 'Contact Us',
                subtiletext: 'know more about us ',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmptyWishListScreen()),
                    )),
          ],
        ),
      ),
    );
  }
}

Widget _createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(children: <Widget>[
        Container(

             width: double.infinity,
             child: Image.asset(
              'assets/images/aliexpress.png',
              width: double.infinity,
              fit: BoxFit.fill,
            ),

        ),
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Developed by Ali Adel ",
                style: TextStyle(
                    color: Color(0xFF545454),
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

Widget _createDrawerItem(
    {IconData icon, String text,String subtiletext, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xFF808080),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            text,
            style: TextStyle(color: Color(0xFF484848)),
          ),
        )
      ],
    ),
    subtitle:Text(
    subtiletext,
    style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
  ),
    onTap: onTap,
  );
}
