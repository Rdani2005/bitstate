import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 214,
      // height: 198,
      margin: const EdgeInsets.only(right: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image(
              image: NetworkImage(
                "https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?cs=srgb&dl=pexels-binyamin-mellish-186077.jpg&fm=jpg",
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Casa de Playa",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          ),
          // SizedBox(
          //   height: 5,
          // ),
          Row(
            children: [
              Text(
                "\$ 1000",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffF3A612),
                ),
              ),
              Text(
                "/month",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 164, 160, 150),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Color(0xffF3A612),
              ),
              Text("Guanacaste"),
            ],
          )
        ],
      ),
      // color: Colors.black,
    );
  }
}
