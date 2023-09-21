import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        elevation: 0.0,
        title: const Text(
          "NEAR BY",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: FlutterLogo(
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  child: Container(
                    width: 300,
                    height: 400,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.amber),
                  ),
                ),
                Positioned(
                  top: 20,
                  child: Container(
                    width: 300,
                    height: 400,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.blue),
                  ),
                ),
                Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://petapixel.com/assets/uploads/2019/02/download-2-800x800.jpeg"),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 340,
                  left: 15,
                  child: Container(
                    height: 90,
                    width: 270,
                    decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 2,
                              color: Colors.black12)
                        ]),
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Manju",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Image(
                                image: NetworkImage(
                                    "https://openclipart.org/image/2400px/svg_to_png/218662/Download-Button.png"),
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(
                                width: 140,
                              ),
                              Text(
                                "5.8 km",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Fate is wonderful...",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 270,
            height: 30,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.chat_bubble),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.close),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
