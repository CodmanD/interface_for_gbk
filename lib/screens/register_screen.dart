import 'package:flutter/material.dart';
import 'package:interface_for_gbk/resources/res.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar:AppBar(title:  Text("Register",style: TextStyle(
        //
        // ),)),
        body: Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: Color.fromRGBO(30, 30, 47, 1)),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                Resources.register,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Color.fromRGBO(31, 142, 241, 1)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      fillColor: Color.fromRGBO(56, 59, 80, 1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: Resources.name),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      fillColor: Color.fromRGBO(56, 59, 80, 1),
                      filled: true,
                      hintStyle: TextStyle(),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: Resources.email),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      fillColor: Color.fromRGBO(56, 59, 80, 1),
                      filled: true,
                      hintStyle: TextStyle(),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: Resources.username),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      fillColor: Color.fromRGBO(56, 59, 80, 1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: Resources.password),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      fillColor: Color.fromRGBO(56, 59, 80, 1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: Resources.confirmPass),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      //border:   Border.all(color: Colors.blueAccent),
                      color: Color.fromRGBO(31, 142, 241, 1)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      Resources.registerButton,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              )
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
              //   child: SizedBox(
              //     width: MediaQuery.of(context).size.width,
              //     child: ColoredBox(
              //       color: Colors.yellow,
              //       child: TextButton(
              //         onPressed: () {},
              //         child: Text(Resources.registerButton),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    ));
  }
}
