import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ticketbookingapp/utils/app_style.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigtext;
  final String smalltext;
  const AppDoubleTextWidget({super.key,required this.bigtext,required this.smalltext});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigtext,
          style: Styles.headlinestyle2,
        ),
        InkWell(
            onTap: () {
              print("youn are tapped");
            },
            child: Text(
              smalltext,
              style: Styles.textStyle.copyWith(color: Styles.primarycolor),
            ))
      ],
    );
  }
}
