import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:interface_for_gbk/resources/res.dart';
import 'package:interface_for_gbk/widget/circle_painter.dart';
import 'package:interface_for_gbk/widget/dashboard_total_users.dart';
import 'package:interface_for_gbk/widget/target_user_painter.dart';
import 'package:interface_for_gbk/widget/years.dart';

class TotalUsersScreen extends StatelessWidget {
  const TotalUsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(Resources.totalUsers),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(56, 59, 80, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        Resources.totalUserNow,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomPaint(
                            painter: CirclePainter(50),
                            size: Size(90, 90),
                          ),
                          Column(
                            children: [
                              CustomPaint(
                                //size: Size(90, 90),
                                painter: TargetUserPainter(),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        Resources.lorem,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Resources.chartUser,
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "In 2011-2018",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Container(
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(56, 59, 80, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          icon: Icon(
                            Icons.arrow_drop_down,
                            size: 20,
                          ),
                          iconEnabledColor: Colors.white,
                          elevation: 0,
                          hint: Text(
                            "Type Chart",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          items:
                              <String>['A', 'B', 'C', 'D'].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
              CustomPaint(
                painter: YearsPainter(),
                size: Size(
                  MediaQuery.of(context).size.width,
                  200,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
