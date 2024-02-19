import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => MainApp(),
        '/halaman2':(context) => HalamanDua()
      },
    )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBar,
        body: Center(
          child: Text('Hello World!'),
        ),
        drawer: sideBar(context),
      ),
    );
  }
}

Widget sideBar(BuildContext context){ 
  return Drawer(
   child: ListView(
    children: [
     drawerHeader,
     ListTile(
      title: Text("Halaman 1"),
      onTap: (){
        Navigator.popAndPushNamed(context, '/');
      },
     ),
      ListTile(
      title: Text("Halaman 2"),
      onTap: (){
        Navigator.popAndPushNamed(context, '/halaman2');
      },
     ),
      ListTile(
      title: Text("Halaman 3"),
      onTap: (){
        Navigator.popAndPushNamed(context, '/');
      },
     ),
      ListTile(
      title: Text("Halaman 4"),
     ),
      ListTile(
      title: Text("Halaman 5"),
     ),
    ],
   ),
);
}


var drawerHeader = DrawerHeader(
  child: Text("Fitria Indriawan"),
);

var appBar = AppBar(
  title: Text("Aplikasi"),
);






class HalamanDua extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: appBar,
        body: Text("Supra"),
        drawer: sideBar(context),
      ),
    );
  }
}

class HalamanTiga extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: appBar,
        body: Text("Susi"),
        drawer: sideBar(context),
      ),
    );
  }
}