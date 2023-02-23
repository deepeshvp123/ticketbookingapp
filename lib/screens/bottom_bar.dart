import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticketbookingapp/screens/home_screen.dart';
import 'package:ticketbookingapp/screens/profile_screen.dart';
import 'package:ticketbookingapp/screens/search_screen.dart';
import 'package:ticketbookingapp/screens/ticket_screen.dart';

class BottomBar extends StatefulWidget {
  BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _SelectedIndex = 0;
  // ignore: non_constant_identifier_names
  static final List<Widget> _WidgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
   ProfileScreen(),
  ];
  void _OnitemTapped(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _WidgetOptions[_SelectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _OnitemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Color(0XFF526480),

          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "Person"),
          ]),
    );
  }
}
