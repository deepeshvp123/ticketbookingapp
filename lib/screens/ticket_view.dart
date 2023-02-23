import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_style.dart';
import 'package:ticketbookingapp/widgets/column_layout.dart';
import 'package:ticketbookingapp/widgets/layout_builder.dart';
import 'package:ticketbookingapp/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? iscolor;
  const TicketView({super.key, required this.ticket, required this.iscolor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(184), //176
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            // showing the blue part of the card/ticket
            Container(
              decoration: BoxDecoration(
                  color: iscolor == null ? Color(0XFF526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: iscolor == null
                            ? Styles.headlinestyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlinestyle3,
                      ),
                      Expanded(child: Container()),
                      ThickContainer(
                        iscolor: true,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                              height: AppLayout.getHeight(24),
                              child: AppLayoutBuilder(
                                sections: 6,
                                iscolor: false,
                              )),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: iscolor == null
                                    ? Colors.white
                                    : Color(0xff8accf7),
                              ),
                            ),
                          ),
                        ],
                      )),
                      ThickContainer(
                        iscolor: true,
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: iscolor == null
                            ? Styles.headlinestyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlinestyle3,
                      )
                    ],
                  ),
                  Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.GetWidget(100),
                        child: Text(
                          ticket['from']['name'],
                          style: iscolor == false
                              ? Styles.headlinestyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlinestyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: iscolor == false
                            ? Styles.headlinestyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlinestyle4,
                      ),
                      SizedBox(
                        width: AppLayout.GetWidget(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: iscolor == false
                              ? Styles.headlinestyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlinestyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //showing the red part of the card/ticket
            Container(
              color: iscolor == null ? Styles.orangecolor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.GetWidget(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: iscolor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                      color: iscolor == false
                                          ? Colors.grey.shade300
                                          : Colors.white,
                                    )),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: iscolor == null
                                ? Colors.grey.shade300
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: iscolor == null ? Styles.orangecolor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(iscolor == null ? 21 : 0),
                      bottomRight: Radius.circular(iscolor == null ? 21 : 0))),
              padding: EdgeInsets.fromLTRB(16, 10, 16, 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppcolumnLayout(
                        firsttext: "Date",
                        secondtext: "date",
                        alignment: CrossAxisAlignment.start,
                        iscolor: false,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: iscolor == null
                                ? Styles.headlinestyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlinestyle3,
                          ),
                          Gap(5),
                          Text(
                            "Departure time",
                            style: iscolor == null
                                ? Styles.headlinestyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlinestyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: iscolor == null
                                ? Styles.headlinestyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlinestyle3,
                          ),
                          Gap(5),
                          Text(
                            "Number",
                            style: iscolor == null
                                ? Styles.headlinestyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlinestyle4,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
