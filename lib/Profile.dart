// ignore_for_file: unnecessary_const, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:store_app_waya/ComputerScience.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String barcode = 'Unknown';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          actions: [
            IconButton(
              icon: Icon(Icons.abc_rounded),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: Colors.blue[400],
        body: GridView.count(
          primary: false,
          padding:
              const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 10),
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          children: [
            InkWell(
              child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Expanded(
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ComputerScience()));
                            },
                            icon: const Icon(
                              Icons.computer_rounded,
                              size: 50,
                            ),
                            color: Colors.black,
                            iconSize: 50.0,
                            splashColor: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Computer Science Department",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const ComputerScience()));
              },
            ),
            InkWell(
              child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Expanded(
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ComputerScience()));
                            },
                            icon: const Icon(
                              Icons.add_rounded,
                              size: 50,
                            ),
                            color: Colors.black,
                            iconSize: 50.0,
                            splashColor: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: const Align(
                          alignment: Alignment.center,
                          child: const Text(
                            "Electonics Department",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const ComputerScience()));
              },
            ),
            InkWell(
              child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Expanded(
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ComputerScience()));
                            },
                            icon: const Icon(
                              Icons.build_rounded,
                              size: 50,
                            ),
                            color: Colors.black,
                            iconSize: 50.0,
                            splashColor: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Mechanical Department",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const ComputerScience()));
              },
            ),
            InkWell(
              child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Expanded(
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ComputerScience()));
                            },
                            icon: const Icon(
                              Icons.settings,
                              size: 50,
                            ),
                            color: Colors.black,
                            iconSize: 50.0,
                            splashColor: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Electrical Department ",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const ComputerScience()));
              },
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
            onPressed: scanBarcode,
            backgroundColor: Colors.pink[300],
            label: const Text("Scan"),
            icon: const Icon(Icons.qr_code_rounded)));
  }

  Future<void> scanBarcode() async {
    try{
    final barcode = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "Cancel", true, ScanMode.BARCODE);

        if(!mounted) return;

        setState(() {
                  this.barcode = barcode;

        });

    } on PlatformException{
    
    barcode ='failed to get platform version';
    }
    
  }
}
