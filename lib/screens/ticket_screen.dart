import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/screens/ticket_view.dart';
import 'package:ticketbookingapp/utils/app_info_list.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_style.dart';
import 'package:ticketbookingapp/widgets/column_layout.dart';
import 'package:ticketbookingapp/widgets/layout_builder.dart';
import 'package:ticketbookingapp/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headlinestyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketlist[0],
                  iscolor: true,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppcolumnLayout(
                          firsttext: "FlutterDB",
                          secondtext: "passenger",
                          alignment: CrossAxisAlignment.start,
                          iscolor: false,
                        ),
                        AppcolumnLayout(
                          firsttext: "5221 364869",
                          secondtext: "passport",
                          alignment: CrossAxisAlignment.end,
                          iscolor: false,
                        )
                      ],
                    ),
                    Gap(20),
                    AppLayoutBuilder(
                      iscolor: false,
                      sections: 15,
                      width: 5,
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppcolumnLayout(
                          firsttext: "0055 444 77781",
                          secondtext: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                          iscolor: false,
                        ),
                        AppcolumnLayout(
                          firsttext: "B2SG28",
                          secondtext: "passport",
                          alignment: CrossAxisAlignment.end,
                          iscolor: false,
                        ),
                      ],
                    ),
                    Gap(10),
                    AppLayoutBuilder(
                      iscolor: false,
                      sections: 15,
                      width: 5,
                    ),
                    Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/image/visa.png",
                                  scale: 75,
                                ),
                                Text(
                                  "****2462",
                                  style: Styles.headlinestyle3,
                                )
                              ],
                            ),
                            Gap(10),
                            Text(
                              "Payment Method",
                              style: Styles.headlinestyle4,
                            )
                          ],
                        ),
                        AppcolumnLayout(
                          firsttext: "\$248.99",
                          secondtext: "Price",
                          alignment: CrossAxisAlignment.end,
                          iscolor: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)))),
                
                margin: EdgeInsets.only(
                  right: AppLayout.getHeight(15), left: AppLayout.getHeight(15)),
              padding: EdgeInsets.only(
                  top: AppLayout.getHeight(15), bottom: AppLayout.getHeight(15)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/martinovovo',
                      drawText: false,
                      color: Styles.textcolor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
               Gap(20),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketlist[0],
                  iscolor: null,
                ),
              ),
            ],
          ),
          Positioned(
            left: 19,
            top: 295,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textcolor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textcolor,
              ),
            ),
          ),
            Positioned(
            right: 19,
            top: 295,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textcolor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textcolor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
