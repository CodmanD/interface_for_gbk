import 'package:flutter/material.dart';

import 'package:interface_for_gbk/resources/res.dart';
import 'package:interface_for_gbk/widget/circle_painter.dart';
import 'package:interface_for_gbk/widget/years.dart';

class DashBoardTotalUsersWidget extends StatelessWidget {

  int quantity = 1000;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Color.fromRGBO(56, 59, 80, 1),
      ),
      child: Column(

        children: [
          Row(
            children: [

              CustomPaint(
                painter: CirclePainter(50),
                size: Size(60, 60),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Resources.totalUserNow,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("$quantity " + Resources.user,
                        style: TextStyle(color: Colors.white, fontSize: 18))
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Resources.targetUser,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(Resources.lessUser,
                    style: TextStyle(color: Colors.white, fontSize: 12))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

