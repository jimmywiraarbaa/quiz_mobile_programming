import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Saya menggunakan Chrome untuk menjalankan programnya pak,
// flutter run -t lib/pages/dash_aps.dart -d chrome

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Soal 1 Quis",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard Aplikasi'),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                      offset: const Offset(2, 2))
                                ],
                                borderRadius: BorderRadius.circular(20.0)),
                            child: const Center(
                              child: Text("Sepatu"),
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                      offset: const Offset(2, 2))
                                ],
                                borderRadius: BorderRadius.circular(20.0)),
                            child: const Center(
                              child: Text("Celana"),
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                      offset: const Offset(2, 2))
                                ],
                                borderRadius: BorderRadius.circular(20.0)),
                            child: const Center(
                              child: Text("Baju"),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30.0),
                            alignment: AlignmentDirectional.topStart,
                            child: const Text(
                              'Image Gallery',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Atur radius border sesuai kebutuhan
                              child:
                                  Image.asset('lib/assets/images/sepatu.jpg'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            alignment: AlignmentDirectional.topStart,
                            child: const Text(
                              'Sepatu Coklat Cream',
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Atur radius border sesuai kebutuhan
                              child:
                                  Image.asset('lib/assets/images/celana.jpg'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            alignment: AlignmentDirectional.topStart,
                            child: const Text(
                              'Celana coklat dan cream',
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  20.0), // Atur radius border sesuai kebutuhan
                              child: Image.asset('lib/assets/images/baju.jpg'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            alignment: AlignmentDirectional.topStart,
                            child: const Text(
                              'Baju kaos pria',
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ))),
      )));
}
