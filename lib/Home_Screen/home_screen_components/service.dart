import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ServicesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Our Services',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Divider(),
          SizedBox(height: 16.0),
          ServiceItem(
            icon: Icons.circle,
            title: 'AI Squad',
            description:
                'We are a software development company registered inSECP,\n providing AI related services in middle east andeurope. \nOur major services are providing Data Analyticsand Machine Learning solutions.',
          ),
          SizedBox(height: 16.0),
          ServiceItem(
            icon: Icons.circle,
            title: 'Student Chapters',
            description:
                'Open student chapters at formal educational institutions and \nspread awareness and enhance skills throughseminars,\n bootcamps,conferences and competitions.',
          ),
          SizedBox(height: 16.0),
          ServiceItem(
            icon: Icons.circle,
            title: 'Tech Partners',
            description:
                'Collaborate with the tech industry to provide the besttalent pool and bridge them up with academia.\n Organize job fairs at different educational institutions.',
          ),
        ],
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  ServiceItem({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 24.0),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  description,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
