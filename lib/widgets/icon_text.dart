import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_style.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.GetWidget(12),
          horizontal: AppLayout.GetWidget(12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.GetWidget(10))),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xffbfc2df),
          ),
          Gap(AppLayout.GetWidget(10)),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
