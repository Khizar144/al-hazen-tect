import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class IndustriesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      //padding: EdgeInsets.only(left: 1.w, right: 1.w),
      // margin: EdgeInsets.only(left: 1.w, right: 1.w),
      width: 98.w,
      child: Table(
        defaultColumnWidth: FixedColumnWidth(24.w),
        // border: TableBorder.all(),
        children: [
          TableRow(children: [
            TableCell(
                child: _buildServiceItem(
                    icon: Icons.shopping_bag_outlined,
                    title: "Health Care Services",
                    description:
                        'this is the rendom tect and here will be the detials of the product we are serving to the user and user can see the others details too by licking the readmore text that is availabe in the bottom')),
            TableCell(
                child: _buildServiceItem(
                    icon: Icons.shopping_bag_outlined,
                    title: "Health Care Services",
                    description:
                        'this is the rendom tect and here will be the detials of the product we are serving to the user and user can see the others details too by licking the readmore text that is availabe in the bottom')),
            TableCell(
                child: _buildServiceItem(
                    icon: Icons.shopping_bag_outlined,
                    title: "Health Care Services",
                    description:
                        'this is the rendom tect and here will be the detials of the product we are serving to the user and user can see the others details too by licking the readmore text that is availabe in the bottom')),
            TableCell(
                child: _buildServiceItem(
                    icon: Icons.shopping_bag_outlined,
                    title: "Health Care Services",
                    description:
                        'this is the rendom tect and here will be the detials of the product we are serving to the user and user can see the others details too by licking the readmore text that is availabe in the bottom')),
          ]),
          TableRow(
            children: [
              TableCell(
                  child: _buildServiceItem(
                      icon: Icons.shopping_bag_outlined,
                      title: "Health Care Services",
                      description:
                          'this is the rendom tect and here will be the detials of the product we are serving to the user and user can see the others details too by licking the readmore text that is availabe in the bottom')),
              TableCell(
                  child: _buildServiceItem(
                      icon: Icons.shopping_bag_outlined,
                      title: "Health Care Services",
                      description:
                          'this is the rendom tect and here will be the detials of the product we are serving to the user and user can see the others details too by licking the readmore text that is availabe in the bottom')),
              TableCell(
                  child: _buildServiceItem(
                      icon: Icons.shopping_bag_outlined,
                      title: "Health Care Services",
                      description:
                          'this is the rendom tect and here will be the detials of the product we are serving to the user and user can see the others details too by licking the readmore text that is availabe in the bottom')),
              TableCell(
                  child: _buildServiceItem(
                      icon: Icons.shopping_bag_outlined,
                      title: "Health Care Services",
                      description:
                          'this is the rendom tect and here will be the detials of the product we are serving to the user and user can see the others details too by licking the readmore text that is availabe in the bottom')),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildServiceItem({
  required IconData icon,
  required String title,
  required String description,
}) {
  bool isHovered = false;

  return StatefulBuilder(builder: (context, setState) {
    return MouseRegion(
      onEnter: (_) {
        // When mouse enters the container
        setState(() => isHovered = true);
      },
      onExit: (_) {
        // When mouse exits the container
        setState(() => isHovered = false);
      },
      child: Padding(
        padding: EdgeInsets.only(left: 0.w, right: 1.w, bottom: 1.h),
        child: AnimatedContainer(
          padding: EdgeInsets.only(
            left: 2.w,
            right: 2.w,
            top: 3.h,
          ),
          margin: isHovered
              ? EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h)
              : EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
          duration: Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(isHovered ? 10 : 5),
            border: Border.all(
                width: !isHovered ? 1 : 0, color: Colors.grey.withOpacity(.8)),
            boxShadow: [
              if (isHovered)
                BoxShadow(
                  color: Colors.grey.withOpacity(.9),
                  spreadRadius: 6,
                  blurRadius: 6,
                  offset: Offset(2, 4),
                ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, size: 40, color: Colors.blue),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Read More',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  });
}
