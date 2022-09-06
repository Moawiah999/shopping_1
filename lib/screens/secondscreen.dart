import 'package:flutter/material.dart';
import 'package:myprojectt/main.dart';
import 'package:myprojectt/screens/secondscreen.dart';

class Mysecondscreen extends StatefulWidget {
  const Mysecondscreen({super.key});

  @override
  State<Mysecondscreen> createState() => _MysecondscreenState();
}

class _MysecondscreenState extends State<Mysecondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/02/13/13/11/oldtimer-1197800__340.jpg"))),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(onPrimary: Colors.amber),
              onPressed: () {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ));
                });
              },
              child: Text("back"),
            ),
          ],
        ),
      ),
    );
  }
}
