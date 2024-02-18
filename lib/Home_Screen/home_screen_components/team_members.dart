import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TeamMembers extends StatelessWidget {
  final String imagePath;
  final String name;
  final String position;
  const TeamMembers(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.position});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imagePath,
                width: double.infinity,
                height: 300,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              name,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              position,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
