import 'package:flutter/material.dart';
import 'package:food_order/burger.dart';
import 'package:food_order/biryani.dart';
import 'package:food_order/design.dart';
import 'package:food_order/dieting.dart';
import 'package:food_order/foodlist.dart';
import 'package:food_order/pizza.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class fooditems {
  final String foodimage;
  final String foodname;
  final dynamic route;

  fooditems(
      {required this.foodimage, required this.foodname, required this.route});
}

class _firstpageState extends State<firstpage> {
  List<fooditems> data = [
    fooditems(foodimage: "images/pizza1.png", foodname: "Pizza", route: pizza()),
    fooditems(
        foodimage: "images/biryani5.png", foodname: "Biryani", route: biryani()),
    fooditems(
        foodimage: "images/d1.png", foodname: "Dieting ", route: dyting()),
    fooditems(
        foodimage: "images/b1.png", foodname: "Burger", route: burger()),
    fooditems(foodimage: "images/chef.png", foodname: "Beer", route: biryani()),
    fooditems(foodimage: "images/chef.png", foodname: "Beer", route: pizza()),

  ];

  List<foodlist> listdata = [
    foodlist(
        review: "Top Of The Year",
        price: "240",
        images: "images/pizza1.png",
        name: "Veggie Pizza",
        weight: "Weight 540 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "150",
        images: "images/d2.png",
        name: "Dieting 2",
        weight: "Weight 240 Gm"),

    foodlist(
        review: "Top Of The Week",
        price: "180",
        images: "images/b1.png",
        name: "Indian Burger",
        weight: "Weight 240 Gm"),

    foodlist(
        review: "Top Of The Week",
        price: "220",
        images: "images/pizza3.png",
        name: "Pepperoni ",
        weight: "Weight 540 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "270",
        images: "images/biryani4.png",
        name: "Calcutta",
        weight: "Weight 340 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "170",
        images: "images/d3.png",
        name: "Dieting 3",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "220",
        images: "images/biryani5.png",
        name: "Hyderabadi",
        weight: "Weight 340 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "220",
        images: "images/biryani3.png",
        name: "Lucknowi",
        weight: "Weight 340 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "270",
        images: "images/pizza4.png",
        name: "Veggie Pizza",
        weight: "Weight 540 Gm"),

    foodlist(
        review: "Top Of The Week",
        price: "280",
        images: "images/biryani2.png",
        name: "Thalassery",
        weight: "Weight 340 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "120",
        images: "images/b1.png",
        name: "Bean burger",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "280",
        images: "images/biryani6.png",
        name: "Sindhi Biryani",
        weight: "Weight 340 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "140",
        images: "images/d1.png",
        name: "Dieting 1",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "280",
        images: "images/pizza5.png",
        name: "Margherita",
        weight: "Weight 540 Gm"),


    foodlist(
        review: "Top Of The Week",
        price: "120",
        images: "images/b1.png",
        name: "Veggie burger",
        weight: "Weight 240 Gm"),

    foodlist(
        review: "Top Of The Week",
        price: "140",
        images: "images/d1.png",
        name: "Dieting 5",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "140",
        images: "images/b1.png",
        name: "Turkey burger",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "110",
        images: "images/d4.png",
        name: "Dieting 4",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "170",
        images: "images/b1.png",
        name: "Cheese burger",
        weight: "Weight 240 Gm"),
    foodlist(
        review: "Top Of The Week",
        price: "220",
        images: "images/pizza2.png",
        name: "Tomato Pizza",
        weight: "Weight 540 Gm"),


  ];

  @override
  Widget build(BuildContext context) {
    Widget listdesign({required foodlist listdata}) => Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: 182,
          decoration: BoxDecoration(
              color: Color(0xfffffca5),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Container(
            child: Stack(children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Image(
                    image: AssetImage(listdata.images),
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
                        listdata.review,
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
                        listdata.name,
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        listdata.weight,
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
                                  MaterialStateProperty.all(Colors.yellow),
                              alignment: Alignment.bottomLeft,
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(25),
                                          topRight: Radius.circular(25))))),
                          onPressed: () {},
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 10, left: 10),
                            child: Icon(Icons.add),
                          ),
                        ),
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
                          listdata.price,
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
    Widget items({required fooditems data}) => Container(
          width: 95,
          height: 170,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(image: AssetImage(data.foodimage))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(data.foodname, style: TextStyle(fontSize: 17)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Icon(Icons.arrow_circle_right_sharp),
              )
            ],
          ),
        );

    return Scaffold(
      appBar:
          AppBar(title: Text("Online Food"), backgroundColor: Colors.yellow),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"),
                  fit: BoxFit.cover,
                  opacity: 0.08)),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                        width: 1, color: Colors.black.withOpacity(0.25)),
                  ),
                  accountName: Text("Krish Kasodariya",
                      style: TextStyle(color: Colors.black)),
                  accountEmail: Text("krishkasodariya061@gmail.com",
                      style: TextStyle(color: Colors.black)),
                  currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image(
                          image: AssetImage("images/chef.png"),
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 6),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.25)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurStyle: BlurStyle.normal,
                            offset: Offset(0, 4),
                            blurRadius: 10),
                      ]),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text("Change Store",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Icon(Icons.location_on),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 6),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.25)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurStyle: BlurStyle.normal,
                            offset: Offset(0, 4),
                            blurRadius: 10),
                      ]),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text("Order History",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Icon(Icons.history_edu),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 6),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.25)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurStyle: BlurStyle.normal,
                            offset: Offset(0, 4),
                            blurRadius: 10),
                      ]),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text("Deal & Offers",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Icon(Icons.local_offer),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 6),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.25)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurStyle: BlurStyle.normal,
                            offset: Offset(0, 4),
                            blurRadius: 10),
                      ]),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text("Menu",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Icon(Icons.restaurant_menu),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 6),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.25)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurStyle: BlurStyle.normal,
                            offset: Offset(0, 4),
                            blurRadius: 10),
                      ]),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text("Feedback",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Icon(Icons.feedback),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 6),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.25)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurStyle: BlurStyle.normal,
                            offset: Offset(0, 4),
                            blurRadius: 10),
                      ]),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text("Contact Us",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Icon(Icons.perm_phone_msg),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 6),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.25)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurStyle: BlurStyle.normal,
                            offset: Offset(0, 4),
                            blurRadius: 10),
                      ]),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text("Share",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Icon(Icons.share),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Powered By",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.yellow),
                          child: Image(
                            image: AssetImage("images/chef.png"),
                            width: 15,
                          )),
                    ),
                    Text("Online Food",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xfffebd11),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Container(
                    child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Online Food",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Delivery!",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                )),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 5, top: 1),
                            child: Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: Image(
                                    image: AssetImage("images/chef.png"),
                                  ),
                                )))
                      ],
                    ),
                  ],
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                child: Container(
                  margin: EdgeInsets.only(top: 6),
                  height: 49,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.25)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurStyle: BlurStyle.normal,
                            offset: Offset(0, 4),
                            blurRadius: 10),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search Your Fav Food...",
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          )),
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Container(
                  height: 170,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => data[index].route));
                        },
                        child: items(data: data[index]),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,top: 15),
                    child: Text("Popular",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500)),
                  )),

              Padding(
                padding: const EdgeInsets.only(top: 20,),
                child: Container(
                  height: 550,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemCount: listdata.length,
                    itemBuilder: (context, index) =>
                        listdesign(listdata: listdata[index]),
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
