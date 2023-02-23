import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppLayoutBuilder extends StatelessWidget {
  final bool iscolor;
  final int sections;
  final double width;
  const AppLayoutBuilder(
      {super.key, required this.iscolor, required this.sections,this.width=3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print("the width is ${constraints.constrainWidth()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / 6).floor(),
              (index) => SizedBox(
                    width: width,
                    height: 1,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            // ignore: unnecessary_null_comparison
                            color: iscolor == null
                                ? Colors.white
                                : Colors.grey.shade300)),
                  )),
        );
      },
    );
  }
}
