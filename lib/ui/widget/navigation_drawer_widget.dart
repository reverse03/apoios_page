import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: HexColor("4F7FF"),
        child: ListView(
          children:<Widget> [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 150, 10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 5, 0, 0),
                    child: Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/gps1.svg',
                          height: 80,
                          width: 80,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            buildMenuItem(text: 'Message',icon:Icons.message)

          ],

        ),

      ),
    );
  }

 Widget buildMenuItem({
   required String text,
   required IconData icon,
 }) {
    final color =Colors.black;
    return ListTile(
      leading: Icon(icon,color: color),
      title: Text(text, style: TextStyle(color: color)),
    );
 }
}
