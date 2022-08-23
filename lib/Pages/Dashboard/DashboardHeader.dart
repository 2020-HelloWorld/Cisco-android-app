import 'package:flutter/material.dart';
class DashboardHeader extends StatelessWidget {
  const DashboardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width:150,),
        Icon(Icons.square_outlined,size: 45,),
        Text(
          "|",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 50
          ),
        ),
        Text(
          "INTERRA",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 35
          ),
        ),
        SizedBox(width: 100,),
        Icon(
          Icons.notifications,
          size: 40,
        )
      ],
    );
  }
}