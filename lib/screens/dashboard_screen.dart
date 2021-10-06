import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:interface_for_gbk/resources/res.dart';
import 'package:interface_for_gbk/widget/dashboard_total_users.dart';
import 'package:interface_for_gbk/widget/mounth_cash.dart';
import 'package:interface_for_gbk/widget/years.dart';

class DaschboardScreen extends StatefulWidget {
  const DaschboardScreen({Key? key}) : super(key: key);

  @override
  _DaschboardScreenState createState() => _DaschboardScreenState();
}

class _DaschboardScreenState extends State<DaschboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          elevation: 0,
          title: Text(Resources.dashBoard),
          backgroundColor: Color.fromRGBO(30, 30, 47, 1),
          actions: [
            Badge(
              badgeContent: Text(
                '1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 5,
                ),
              ),
              shape: BadgeShape.circle,
              position: BadgePosition.topEnd(top: 15, end: 12),
              badgeColor: Color.fromRGBO(0, 221, 221, 1),
              child: IconButton(
                icon: ImageIcon(
                  AssetImage("assets/alarm.png"),
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            IconButton(
                icon: ImageIcon(
                  AssetImage("assets/user.png"),
                  color: Colors.white,
                ),
                //Icon(Icons.person),
                tooltip: "Save Todo and Retrun to List",
                onPressed: () {}),
          ],
        ),
        //backgroundColor: Color.fromRGBO(30, 30, 47, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              DashBoardTotalUsersWidget(),
              YearsWidget(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text(
                        Resources.dailySalesResult,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "January 01 - 30",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ]),
                    Text(
                      "\$10,190",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: MounthCashWidget(),
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ));
  }
}
