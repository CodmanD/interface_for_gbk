import 'package:flutter/material.dart';
import 'package:interface_for_gbk/resources/res.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromRGBO(207, 226, 243, 1)),
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(children: [
          Container(
            // width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                //                   <--- border color
                width: 2.0,
              ),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Resources.registerScreen,
                );
              },
              child: Text(
                Resources.screen1,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            // width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                //                   <--- border color
                width: 2.0,
              ),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Resources.dashboardScreen,
                );
              },
              child: Text(
                Resources.screen2,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            // width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                //                   <--- border color
                width: 2.0,
              ),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Resources.totalUsersScreen,
                );
              },
              child: Text(
                Resources.screen3,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
