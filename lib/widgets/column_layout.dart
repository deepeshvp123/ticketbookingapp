import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_style.dart';

class AppcolumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firsttext;
  final String secondtext;
  final bool? iscolor;
  const AppcolumnLayout(
      {super.key,
      required this.firsttext,
      required this.secondtext,
      required this.alignment,
      required this.iscolor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firsttext,
          style: iscolor == null
              ? Styles.headlinestyle3.copyWith(color: Colors.white)
              : Styles.headlinestyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondtext,
          style: iscolor == null
              ? Styles.headlinestyle3.copyWith(color: Colors.white)
              : Styles.headlinestyle4,
        ),
      ],
    );
  }
}
