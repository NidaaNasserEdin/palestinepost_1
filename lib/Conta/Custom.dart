import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  const CustomWidget({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
          color: Colors.amberAccent, borderRadius: BorderRadius.circular(4.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 35, color: Colors.black12),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black54),
          )
        ],
      ),
    );
  }
}
