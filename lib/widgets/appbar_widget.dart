import 'package:badges/badges.dart' as badges;

import 'package:flutter/material.dart';
import 'package:flutteruitask/assets_constants/image_location.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(ImageLocation.photoCircularGirl),
                radius: 32,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "operator",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Sita Nepali",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: badges.Badge(
              onTap: () {
                debugPrint("hello");
              },
              badgeStyle:
                  const badges.BadgeStyle(badgeColor: Color(0xFF363263)),
              badgeContent: const Text(
                "2",
                style: TextStyle(color: Colors.white),
              ),
              child: IconButton(
                onPressed: () {
                  debugPrint("hello 2");
                },
                icon: const Icon(
                  Icons.notifications_none,
                  color: Color(0xFF363263),
                  size: 35,
                ),
              ),
            ),
          )
          // Badge(
          //   textColor: Colors.purple,
          //   backgroundColor: Colors.deepPurple,
          //   label: Text(
          //     "2",
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   child: Icon(
          //     Icons.notifications,
          //     color: Colors.purple,
          //     size: 35,
          //   ),
          // ),
          // )
        ],
      ),
    );
  }
}
