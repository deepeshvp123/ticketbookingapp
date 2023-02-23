import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/screens/hotel_screen.dart';
import 'package:ticketbookingapp/screens/ticket_view.dart';
import 'package:ticketbookingapp/utils/app_info_list.dart';
import 'package:ticketbookingapp/utils/app_style.dart';
import 'package:ticketbookingapp/widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "good morning ",
                          style: Styles.headlinestyle3,
                        ),
                        Gap(5),
                        Text("Book Ticket", style: Styles.headlinestyle1),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage("assets/image/plane.png"))),
                    )
                  ],
                ),
                Gap(25),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "search",
                        style: Styles.headlinestyle4,
                      )
                    ],
                  ),
                ),
                Gap(40),
                AppDoubleTextWidget(bigtext: "Upcoming Flights", smalltext: "View all")
              ],
            ),
          ),
          Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              // children: ticketlist.map((singleticket) => TicketView(ticket: singleticket) ).toList()
              children: ticketlist.map((singleticket) => TicketView(ticket: singleticket, iscolor: null)).toList(),
            ),
          ),
          Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:   AppDoubleTextWidget(bigtext: "Hotels", smalltext: "View all")
          ),
          Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child:  Row(
              children: hotellist.map((singlehotel) => HotelScreen(hotel: singlehotel)).toList()
            ),),
        ],
      ),
    );
  }
}
