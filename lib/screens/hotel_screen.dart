import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_style.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    print("hotel price is ${hotel['Price']}");
    final size = AppLayout.getsize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primarycolor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 1)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primarycolor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/${hotel["imagee"]}"))),
          ),
          Gap(15),
          Text(
            hotel['place'],
            style: Styles.headlinestyle2.copyWith(color: Styles.kakicolor),
          ),
          Gap(5),
          Text(
           hotel['Destintation'],
            style: Styles.headlinestyle3.copyWith(color: Colors.white),
          ),
          Gap(8),
          Text(
          "\$${hotel["Price"]}/night",
            style: Styles.headlinestyle1.copyWith(color: Styles.kakicolor),
          ),
        ],
      ),
    );
  }
}
