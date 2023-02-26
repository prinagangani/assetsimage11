import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/building.jpeg",fit: BoxFit.cover,),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 10,left: 100),
              child: Icon(Icons.arrow_back,color: Colors.white,),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 400,
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Photos & Videos",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, letterSpacing: 1),
                      ),
                    ),
                    Text("269 shots",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            letterSpacing: 1)
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 290,
                            width: 150,
                            child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    bottomLeft: Radius.circular(50)),
                                child: Image.asset("assets/images/tower.jpg",
                                    fit: BoxFit.fitHeight)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 140,
                                width: 150,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30)),
                                    child: Image.asset("assets/images/box.jpg",
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 140,
                                width: 150,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(30)),
                                    child: Image.asset("assets/images/seas.jpeg",
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text("______________",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey)),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 110,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.jpeg"),
                    radius: 40,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Alexio Morales",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          fontSize: 18)),
                  SizedBox(height: 5,),
                  Text("128k fans",
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 2, fontSize: 10)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}