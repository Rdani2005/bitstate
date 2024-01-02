import 'package:bitstate/app/models/filter_model.dart';
import 'package:bitstate/app/widgets/filters.dart';
import 'package:bitstate/app/widgets/header.dart';
import 'package:bitstate/app/widgets/houses_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(size: size),
            Filters(
              filters: [
                FilterModel(text: "Buy", onClick: () {}),
                FilterModel(text: "Rent", onClick: () {}),
                FilterModel(text: "Sell", onClick: () {}),
              ],
            ),
            const HousesContainer(title: "Near You"),
            const HousesContainer(title: "Recommended"),
            const HousesContainer(title: "Some Titles"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Discover',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.chat),
          //   label: 'Chats',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
