import 'package:flutter/material.dart';
import 'package:food_order/firstpage.dart';
import 'package:food_order/register.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var _obsecured = true;
  var _password = TextEditingController();
  var _phonenumber = TextEditingController();

  List<Map> data = [];
  String selectedkey = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"),
                  fit: BoxFit.cover,
                  opacity: 0.08)),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.only(top: 80),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 13),
                    child: Container(
                      child: Image.asset("images/chef.png"),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text("Login Here!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                    "Welcome Back! Before Enjoying Online Food \n               Services Please Login Here"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    margin: EdgeInsets.only(top: 35),
                    width: double.infinity,
                    height: 57,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurStyle: BlurStyle.normal,
                            offset: Offset(0, 4),
                            blurRadius: 10)
                      ],
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.25)),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: InternationalPhoneNumberInput(
                            onInputChanged: (value) {},
                            textFieldController: _phonenumber,
                            cursorColor: Colors.black,
                            formatInput: false,
                            selectorConfig: SelectorConfig(
                                selectorType:
                                    PhoneInputSelectorType.BOTTOM_SHEET),
                            inputDecoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.phone, color: Color(0xffffbf00)),
                                // contentPadding:
                                //     EdgeInsets.only(bottom: 15, left: 0),
                                hintText: "Phone Number",
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 18,
                                )),
                            textStyle: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),
                            maxLength: 10,
                          ),
                        ),
                        Positioned(
                            left: 100,
                            top: 8,
                            bottom: 8,
                            child: Container(
                              height: 40,
                              width: 1,
                              color: Colors.black.withOpacity(0.13),
                            ))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  margin: EdgeInsets.only(top: 8),
                  height: 57,
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
                  child: Center(
                    child: TextField(
                      controller: _password,
                      cursorColor: Colors.black,
                      obscureText: _obsecured,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                      autofocus: true,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: Icon(
                            Icons.lock,
                            color: Color(0xffffbf00),
                          ),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obsecured = !_obsecured;
                              });
                            },
                            icon: _obsecured
                                ? Icon(
                                    Icons.visibility,
                                    color: Colors.black45,
                                  )
                                : Icon(
                                    Icons.visibility_off,
                                    color: Colors.black45,
                                  )),
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle:
                            TextStyle(fontSize: 18, color: Colors.black45),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: ElevatedButton(
                  onPressed: () {
                    if (_phonenumber.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Enter PhoneNumber",
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 14)),
                        duration: Duration(milliseconds: 1500),
                        behavior: SnackBarBehavior.floating,
                        width: 160,
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 5,
                      ));
                    } else if (_phonenumber.text.length < 10) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Not Valid PhoneNumber",
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 14)),
                        duration: Duration(milliseconds: 1500),
                        behavior: SnackBarBehavior.floating,
                        width: 187,
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 5,
                      ));
                    } else if (_password.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Enter Password",
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 14)),
                        duration: Duration(milliseconds: 1500),
                        behavior: SnackBarBehavior.floating,
                        width: 130,
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 5,
                      ));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => firstpage(),
                          ));
                    }
                  },
                  child: Text("Login",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                      minimumSize:
                          MaterialStateProperty.all(Size(double.infinity, 55)),
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Your Password ?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have An Account ?",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => register(),
                            ));
                      },
                      child: Text(
                        "Register Here!",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
