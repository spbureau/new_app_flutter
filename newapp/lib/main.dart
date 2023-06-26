import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color.fromARGB(255, 47, 1, 252),
        title: const Text("My App",
            style: TextStyle(
                color: Color.fromARGB(255, 250, 248, 248),
                fontWeight: FontWeight.w700)),
        //  foregroundColor: Colors.white70,
        // Send Button on AppBar
        actions: [
          IconButton(
              onPressed: () => debugPrint("This button is pressed"),
              icon: Icon(Icons.send)),
          IconButton(
              onPressed: () => debugPrint("Cancelled!"),
              icon: Icon(Icons.close)),
        ],
      ),
      // Body of Page (Inside Scaffold)
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 241, 226, 4)),
              child: Text("Development"),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.greenAccent),
              child: const Text("Run Code"),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  //border: Border.all(5.0),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(136, 28, 26, 189)),
              child: Text("Send Message"),
            ),
            Row(children: [
              Image.asset(
                'fbavatar_00.png',
                height: 100.0,
                width: 100.0,
              ),
              Image.asset(
                'fbavatar-1.png',
                height: 100.0,
                width: 100.0,
              ),
              Image.asset(
                'fbavatar-5.png',
                height: 100.0,
                width: 100.0,
              ),
            ]),
          ]),
      // Home Drawer
      drawer: const Drawer(
        backgroundColor: Colors.blue,
      ),

      // Bottom Naviagation Bar Inside Scaffold
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          //Home Icon and Label
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: "Messages",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Settings",
        ),
      ]),
    );
  }
}
