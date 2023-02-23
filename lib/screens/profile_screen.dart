import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_style.dart';
import 'package:ticketbookingapp/widgets/column_layout.dart';
import 'package:ticketbookingapp/widgets/layout_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                        image: AssetImage('assets/image/plane.png'))),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headlinestyle1,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    'New-York',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100)),
                        color: const Color(0xFFFEF4F3)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF526799)),
                          child: const Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text(
                          'Premium Status',
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        ),
                        Gap(AppLayout.getHeight(5)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('you are tapped');
                    },
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                          color: Styles.primarycolor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primarycolor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18))),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xFF264CD2)),
                    ),
                  )),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(25),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      // ignore: unnecessary_const
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primarycolor,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'you\'v got a new award',
                          style: Styles.headlinestyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'You have 95 flights in a year',
                          style: Styles.headlinestyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            'Accumulated Miles',
            style: Styles.headlinestyle2,
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.GetWidget(18)),
                color: Styles.bgcolor,
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 10,
                      spreadRadius: 10)
                ]),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text('192802',
                    style: TextStyle(
                        fontSize: 40,
                        color: Styles.textcolor,
                        fontWeight: FontWeight.w600)),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accured',
                      style: Styles.headlinestyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      '23 May 2023',
                      style: Styles.headlinestyle4.copyWith(fontSize: 16),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(4)),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(AppLayout.getHeight(4)),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    AppcolumnLayout(
                        firsttext: '23 042',
                        secondtext: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        iscolor: false),
                    AppcolumnLayout(
                        firsttext: 'Airline Co',
                        secondtext: 'Received From',
                        alignment: CrossAxisAlignment.end,
                        iscolor: false)
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const AppLayoutBuilder(iscolor: false, sections: 12),
                Gap(AppLayout.getHeight(12)),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    AppcolumnLayout(
                        firsttext: '24',
                        secondtext: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        iscolor: false),
                    AppcolumnLayout(
                        firsttext: 'McDonal\'s',
                        secondtext: 'Received From',
                        alignment: CrossAxisAlignment.end,
                        iscolor: false)
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const AppLayoutBuilder(iscolor: false, sections: 12),
                Gap(AppLayout.getHeight(12)),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    
                         AppcolumnLayout(
                        firsttext: '52 340',
                        secondtext: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        iscolor: false),
                    AppcolumnLayout(
                        firsttext: 'Exuma',
                        secondtext: 'Received From',
                        alignment: CrossAxisAlignment.end,
                        iscolor: false)
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          InkWell(
            onTap: () => print('you are tapped'),
            child: Center(
              child: Text(
                'How to get more miles',
                style: Styles.textStyle.copyWith(
                    color: Styles.primarycolor, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
