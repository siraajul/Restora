import 'package:flutter/material.dart';
import 'package:restora/modules/profile/ui/screens/profile_menu.dart';
import 'modules/home/ui/screens/home_page.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int index=0;

  final screens =[
    const HomePage(),
    const ProfileMenu(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        height: 60.0,
        indicatorColor: Colors.orange,
        surfaceTintColor: Colors.white,
        selectedIndex: index,
        onDestinationSelected: (index) =>
            setState(() => this.index=index) ,
        destinations:  const [
          NavigationDestination(icon: Icon(Icons.home_filled), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
