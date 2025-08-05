import 'package:flutter/material.dart';
import 'package:food_order/foodlist.dart';
import 'package:food_order/login.dart';

class burger extends StatefulWidget {
  const burger({Key? key}) : super(key: key);

  @override
  State<burger> createState() => _burgerState();
}
class burgeritems {
  final String images;
  final String price;
  final String review;
  final String name;

  burgeritems(
      {required this.images,
        required this.name,
        required this.price,
        required this.review});
}

class _burgerState extends State<burger> {
  List<burgeritems> burgerdata = [
    burgeritems(
        images: "images/b1.png",
        name: "Turkey burger",
        price: "Rs. 140",
        review: "(760 review)"),
    burgeritems(
        images: "images/b1.png",
        name: "Veggie burger",
        price: "Rs. 120",
        review: "(520 review)"),
    burgeritems(
        images: "images/b1.png",
        name: "Bean burger",
        price: "Rs. 120",
        review: "(620 review)"),
    burgeritems(
        images: "images/b1.png",
          name: "Cheese burger",
        price: "Rs. 170",
        review: "(870 review)"),
    burgeritems(
        images: "images/b1.png",
        name: "Indian Burger",
        price: "Rs. 180",
        review: "(420 review)"),
  ];
  List<foodlist>burgerlistdata=[
    foodlist(
        review: "Top Of The Week",
        price: "180",
        images: "images/b1.png",
        name: "Indian Burger",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "120",
        images: "images/b1.png",
        name: "Bean burger",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "120",
        images: "images/b1.png",
        name: "Veggie burger",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "140",
        images: "images/b1.png",
        name: "Turkey burger",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "170",
        images: "images/b1.png",
        name: "Cheese burger",
        weight: "Weight 240 Gm"),

  ];
  @override
  Widget build(BuildContext context) {
    Widget burgerlistdesign({required foodlist burgerlistdata})=>Container(
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
                image: AssetImage(burgerlistdata.images),
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
                    burgerlistdata.review,
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
                    burgerlistdata.name,
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    burgerlistdata.weight,
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
                      "Rs.",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      burgerlistdata.price,
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  )
                ],
              )
            ]),
          )
        ]),
      ),
    );
    Widget burgerdesign({required burgeritems burgerdata}) => Container(
      height: 400,
      width: 330,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 300,
            width: 230,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40))),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Icon(Icons.star, size: 15, color: Colors.black),
                        Icon(Icons.star, size: 15, color: Colors.black),
                        Icon(Icons.star, size: 15, color: Colors.black),
                        Icon(Icons.star, size: 15, color: Colors.black),
                        Icon(Icons.star_outline_sharp,
                            size: 15, color: Colors.black),
                        Text(
                          burgerdata.review,
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          burgerdata.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
                  SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image(
              image: AssetImage(burgerdata.images),
              width: 195,
              height: 195,
              alignment: Alignment.topRight,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(bottom: 23, right: 20),
              height: 55,
              width: 100,
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Colors.yellow,
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    burgerdata.price,
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  )),
            ),
          )
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,title: Text("Burger"),),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                child: ListView.separated(
                  itemCount: burgerdata.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      burgerdesign(burgerdata: burgerdata[index]),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 1,
                  ),
                ),
              ),Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,top: 15),
                    child: Text("Popular Burger",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500)),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 550,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemCount: burgerlistdata.length,
                    itemBuilder: (context, index) =>
                        burgerlistdesign(burgerlistdata: burgerlistdata[index]),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
