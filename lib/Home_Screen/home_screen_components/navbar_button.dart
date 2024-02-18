import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NavBarButton extends StatefulWidget {
  final String name;
  final VoidCallback fun;
  List<String>? productList;

  NavBarButton(
      {Key? key, required this.name, required this.fun, this.productList})
      : super(key: key);

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            hover = true;
          });
        },
        onExit: (_) {
          setState(() {
            hover = false;
          });
        },
        child: InkWell(
          onTap: widget.fun,
          child: Stack(
            children: [
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: hover ? Colors.blue : Colors.black54,
                ),
              ),
              if (widget.name == "Products" && hover)
                Positioned(
                  top: 40, // Adjust position to align with button
                  left: 0,
                  child: Container(
                    width: 200, // Adjust width according to your content
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: widget.productList!
                          .map((product) => ListTile(
                                title: Text(product),
                                onTap: () {
                                  // Handle product tap here
                                },
                              ))
                          .toList(),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
