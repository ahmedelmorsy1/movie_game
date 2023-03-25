import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double fontSize;
  final Color color;
  final Alignment alignment;
  
  const CustomText({
    Key? key,
    this.text = "",
    this.fontSize = 18,
    this.color = Colors.black,
    this.alignment = Alignment.topRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(text!,
            style: TextStyle(color: color,fontSize: fontSize,
            ),),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}