import 'package:flutter/material.dart';

class design extends StatefulWidget {
  const design({Key? key}) : super(key: key);

  @override
  State<design> createState() => _designState();
}

class _designState extends State<design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: 182,
        decoration: BoxDecoration(
            color: Color(0xffbbffad),
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Container(
          child: Stack(children: [
            Align(
                alignment: Alignment.centerRight,
                child: Image(
                  image: AssetImage("images/pizza1.png"),
                  width: 150,
                  height: 150,
                )),
            Container(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Top Of The Week",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Top Of The Week",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Weight 540 Gr",
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(Size(80, 50)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                              alignment: Alignment.bottomLeft,
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(25),
                                          topRight: Radius.circular(25))))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10,left: 10),
                            child: Icon(Icons.add),
                          ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text(
                        " Rs. 240",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    )
                  ],
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
