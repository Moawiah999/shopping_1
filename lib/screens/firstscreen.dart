import 'package:flutter/material.dart';
import 'package:myprojectt/main.dart';
import 'package:myprojectt/screens/secondscreen.dart';

class Myfirstscreen extends StatefulWidget {
  const Myfirstscreen({super.key});

  @override
  State<Myfirstscreen> createState() => _MyfirstscreenState();
}

class _MyfirstscreenState extends State<Myfirstscreen> {
  List myitems = ["Saudi Arabia", "Jordan", "Syria", "United kingdom"];
  String selectitems = "Jordan";
  List<Color> mycolor = [Colors.black87, Colors.deepPurple, Colors.black];
  String mygroupValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text(
                    "Choose what you want",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  decoration:
                      BoxDecoration(gradient: LinearGradient(colors: mycolor)),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  color: Colors.black,
                  child: ListTile(
                    subtitle: Row(
                      children: [
                        Container(
                          child: Text(
                            "800",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 25,
                                color: Colors.red),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          child: Text(
                            "700",
                            style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 50),
                          ),
                        )
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.red,
                      onPressed: () {},
                    ),
                    leading: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("images/images_2.jpg")),
                    title: Text(
                      "  iphone 12",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                  ),
                ),
                Divider(
                  thickness: 4,
                  color: Colors.red,
                ),
                Container(
                  color: Colors.black,
                  child: ListTile(
                    subtitle: Row(
                      children: [
                        Container(
                          child: Text(
                            "800",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 25,
                                color: Colors.red),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          child: Text(
                            "700",
                            style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 50),
                          ),
                        )
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.red,
                      onPressed: () {},
                    ),
                    leading: Image(
                        fit: BoxFit.contain,
                        image: AssetImage("images/images_4.jpg")),
                    title: Text(
                      "huawei P10",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                  ),
                ),
                Divider(
                  thickness: 4,
                  color: Colors.red,
                ),
                Divider(
                  height: 300,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Please select a payment method",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                RadioListTile(
                  title: Text(
                    "cash payment",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  value: "cash payment",
                  groupValue: mygroupValue,
                  onChanged: (val) {
                    setState(() {
                      mygroupValue = val.toString();
                    });
                  },
                ),
                RadioListTile(
                  selectedTileColor: Colors.cyanAccent,
                  title: Text(
                    "Pay by Visa",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  secondary: Text(
                    "Pay cash without commission",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  value: "Pay by Visa",
                  groupValue: mygroupValue,
                  onChanged: (val) {
                    setState(() {
                      mygroupValue = val.toString();
                    });
                  },
                ),
                Container(
                  child: Text(
                    "Delivery to",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
                DropdownButton(
                  icon: Icon(Icons.send_and_archive,
                      color: Colors.amber, size: 20),
                  isExpanded: true,
                  value: selectitems,
                  items: myitems
                      .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      selectitems = val.toString();
                    });
                  },
                ),
                Divider(
                  height: 5,
                  thickness: 5,
                  color: Colors.cyanAccent,
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
                ElevatedButton.icon(
                  icon: Icon(Icons.drive_eta, color: Colors.greenAccent),
                  label: Text(
                    "Go to the car section",
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Mysecondscreen();
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
          ],
        ),
      ),
    );
  }
}
