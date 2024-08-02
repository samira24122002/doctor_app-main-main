import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryWidget extends StatelessWidget {
  final String text;
  final String iconPath;
  const CategoryWidget({super.key,required this.text,required this.iconPath});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          child: SvgPicture.asset(
            iconPath,
            height: 30,
            width: 30,
            ),
        
          backgroundColor: Color(0XFFFAFAFA),
        ),
        Text(text,style: TextStyle(color: Color(0XFF8696BB), fontSize: 15),
        )
      ],
    );
  }
}
