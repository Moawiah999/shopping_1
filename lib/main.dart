import 'package:flutter/material.dart';
import './screens/firstscreen.dart';
import './screens/secondscreen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lime),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/images_1.webp"),
          ),
        ),
        child: Column(
          children: [
            Divider(
              height: 25,
            ),
            Center(
              child: Container(
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      // fontFamily: ,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[400]),
                ),
              ),
            ),
            Divider(
              height: 450,
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.shopping_cart, color: Colors.greenAccent),
              label: Text(
                "Go to shopping",
                style: TextStyle(fontSize: 25),
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Myfirstscreen();
                    },
                  ));
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
