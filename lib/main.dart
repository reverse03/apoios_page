import 'package:apoios_page/ui/widget/navigation_drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  /* CUSTOME Navigation Drawer  */

  final GlobalKey<ScaffoldState> _scafoldKey = GlobalKey<ScaffoldState>();

    //late TabController  _tabController;
//   @override
//   void initState(){
//     super.initState();
//     _tabController= TabController(length: 4, vsync: this,);
//     // _tabController.addListener(_handleTabSelection);
//   }
// @override
// void dispose() {
//     // TODO: implement deactivate
//   _tabController.dispose();
//     super.dispose();
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEEEF),
      // appBar: AppBar(
      //
      //   title: Text('MY APP'),
      // ),
      drawerEnableOpenDragGesture: true,
      key: _scafoldKey,
      drawer: NavigationDrawerWidget(),

      // Drawer(
      //     child: Container(
      //   color: HexColor("4F7FF"),
      //   child: ListView(
      //     //padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       //SizedBox(height: 50,),
      //       Padding(
      //         padding: const EdgeInsets.fromLTRB(10, 20, 150, 10),
      //         child: Column(
      //           children: <Widget>[
      //             Row(
      //               children: [
      //                 IconButton(
      //                   icon: const Icon(Icons.close),
      //                   onPressed: () {
      //                     Navigator.pop(context);
      //                   },
      //                 )
      //               ],
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.fromLTRB(15.0, 5, 0, 0),
      //               child: Row(
      //                 children: <Widget>[
      //                   SvgPicture.asset(
      //                     'assets/gps1.svg',
      //                     height: 80,
      //                     width: 80,
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 100,
      //       ),
      //
      //       const ListTile(
      //         leading: Icon(
      //           Icons.message,
      //           color: Color(0xFFFFA000),
      //         ),
      //         title: Text('Messages'),
      //       ),
      //       const ListTile(
      //         leading: Icon(Icons.account_circle),
      //         title: Text('Profile'),
      //       ),
      //       const ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text('Settings'),
      //       ),
      //     ],
      //   ),
      // )),
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
                // SizedBox(
                //   height: MediaQuery.of(context).size.height,
                //   width: MediaQuery.of(context).size.width,
                //   //color: Color(0xFFBDBDBD),
                // ),
                // Positioned(
                //   top: MediaQuery.of(context).size.height/2+270.0,
                //
                //   child:Container(
                //     height: MediaQuery.of(context).size.height,
                //     width: MediaQuery.of(context).size.width,
                //     decoration: const BoxDecoration(
                //         borderRadius: BorderRadius.only(
                //           topRight: Radius.circular(40.0),
                //           topLeft: Radius.circular(40.0),
                //         ),
                //         color: Colors.white
                //     ),
                //   ),
                // ),
                //Custome App bar
                // Container(
                //     padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                //     child: Padding(
                //       padding: EdgeInsets.zero,
                //       child: Column(
                //         children: [
                //           /* This Row for showing the Custome Title bar */
                //           Padding(
                //             padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                //             child: Row(
                //               mainAxisAlignment: MainAxisAlignment.start,
                //               children: <Widget>[
                //                 IconButton(
                //                     icon: const Icon(
                //                       Icons.menu,
                //                       color: Colors.black,
                //                       size: 35,
                //                     ),
                //                     onPressed: () {
                //                       _scafoldKey.currentState!.openDrawer();
                //                     }),
                //                 const SizedBox(
                //                   width: 100,
                //                 ),
                //                 SvgPicture.asset(
                //                   'assets/gps1.svg',
                //                   height: 80,
                //                   width: 80,
                //                 ),
                //               ],
                //             ),
                //           ),
                //           const SizedBox(height: 30.0),
                //
                //           /* Showin APOIOS  Name*/
                //           Row(children: <Widget>[
                //             Padding(
                //               padding: const EdgeInsets.only(left: 15.0),
                //               child: Row(
                //                 children: const <Widget>[
                //                   Text(
                //                     "Apoios",
                //                     style: TextStyle(
                //                         color: Color(0xFFFB8C00),
                //                         fontWeight: FontWeight.bold,
                //                         fontSize: 20.0),
                //                   )
                //                 ],
                //               ),
                //             ),
                //           ]),
                //           /* Showing ASAS logo*/
                //           Padding(
                //             padding: const EdgeInsets.only(top: 50.0),
                //             child: Center(
                //               child: Row(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: <Widget>[
                //                   SvgPicture.asset("assets/asas.svg")
                //                 ],
                //               ),
                //             ),
                //           ),
                //           // Padding(
                //           //   padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
                //           //   child: Row(
                //           //     mainAxisAlignment: MainAxisAlignment.center,
                //           //     children: <Widget>[
                //           //       SvgPicture.asset("assets/bpi.svg")
                //           //     ],
                //           //   ),
                //           // ),
                //         ],
                //       ),
                //     ),
                // ),
          ],
        ),
      ),

      //Bottom Navigation with TabBar eleminating
      bottomNavigationBar: Container(
        height: 120,
          margin: EdgeInsets.zero,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50.0),
              topLeft: Radius.circular(50.0),
            ),
            color: Colors.white,
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(50.0),
              topLeft: Radius.circular(50.0),
            ),
            child: DefaultTabController(
              length: 4,
              child: TabBar(

                //controller: _tabController,
                indicatorColor: Colors.white, //indicator color is white that's why its not showing
                unselectedLabelColor: Colors.black,
                labelColor: const Color(0xFFFB8C00),
                tabs: [
                  Tab(
                    icon:SizedBox(
                      width: 22,height: 22,
                      child: SvgPicture.asset( "assets/home_b.svg",),
                    ),
                    text: "Home",
                  ),
                  Tab(
                    icon:SizedBox(
                      width: 22,height: 22,
                      child: SvgPicture.asset( "assets/about.svg"),
                    ),
                    text: "Sobre nos",
                  ),
                  Tab(
                    icon:SizedBox(
                      width: 22,height: 22,
                      child: SvgPicture.asset( "assets/bxs-contact.svg",),
                    ),
                    text: "Contactos",
                  ),
                  Tab(
                    icon:SizedBox(
                      width: 22,height: 22,
                      child: SvgPicture.asset( "assets/apoios.svg",color: const Color(0xFFFB8C00),),
                    ),
                    text: "Apoios",
                  )
                ],
              ),
            ),
          )),
    );
  }
}
