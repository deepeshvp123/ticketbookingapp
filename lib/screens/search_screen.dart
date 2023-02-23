import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_style.dart';
import 'package:ticketbookingapp/widgets/double_text_widget.dart';
import 'package:ticketbookingapp/widgets/icon_text.dart';
import 'package:ticketbookingapp/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.GetWidget(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are \n you looking for?",
            style: Styles.headlinestyle1
                .copyWith(fontSize: AppLayout.GetWidget(35)),
          ),
          Gap(AppLayout.getHeight(20)),
        AppTicketTabs( firstTab: "Airline Tickes",secondTab: "Hotels",),
          Gap(AppLayout.getHeight(25)),
          AppIconText(text: "Departure", icon: Icons.flight_takeoff_rounded),
          Gap(AppLayout.getHeight(20)),
          AppIconText(text: "Arrivel", icon: Icons.flight_land_rounded),
          Gap(AppLayout.getHeight(25)),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.GetWidget(15),
                  horizontal: AppLayout.GetWidget(15)),
              decoration: BoxDecoration(
                  color: Color(0xd91130ce),
                  borderRadius: BorderRadius.circular(AppLayout.GetWidget(10))),
              child: Center(
                child: Text(
                  "Find tickets",
                  style: Styles.textStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
              )),
          Gap(AppLayout.getHeight(40)),
          AppDoubleTextWidget(
              bigtext: "Upcoming Flights", smalltext: "View all"),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(423),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.GetWidget(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          spreadRadius: 1,
                          blurRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/seat.jpg"))),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Text(
                      '20 % discount on the early booking of this flight. dont miss .',
                      style: Styles.headlinestyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(194),
                        decoration: BoxDecoration(
                            color: Color(0xff3ab8b8),
                            borderRadius: BorderRadius.circular(18)),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(10),
                            horizontal: AppLayout.getHeight(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount \nfor survey',
                              style: Styles.headlinestyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(15)),
                            Text(
                              'Take the survey about our services and get discount ',
                              style: Styles.headlinestyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -37,
                          top: -35,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: Color(0xff189999)),
                                color: Colors.transparent),
                          ))
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15),
                        vertical: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                        color: Color(0xffec6545),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18))),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headlinestyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        RichText(text: TextSpan(
                          children: [
                            TextSpan(
                              text: "😻",
                              style: TextStyle(fontSize: 30)
                            ),
                             TextSpan(
                              text: "😽",
                              style: TextStyle(fontSize: 40)
                            ),
                             TextSpan(
                              text: "😻",
                              style: TextStyle(fontSize: 30)
                            ),
                          ]
                        ))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
