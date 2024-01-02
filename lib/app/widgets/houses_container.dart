import 'package:bitstate/app/widgets/home_card.dart';
import 'package:flutter/material.dart';

class HousesContainer extends StatelessWidget {
  const HousesContainer({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        // height: 305,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCard(),
                  HomeCard(),
                  HomeCard(),
                  HomeCard(),
                  HomeCard(),
                  HomeCard(),
                ],
              ),
            )
          ],
        ));
  }
}
