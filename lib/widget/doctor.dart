import 'package:doctor_app/widget/icon_text.dart';
import 'package:flutter/material.dart';

class DoctorWidget extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;
  final String date;
  final String time;
  final Color titleColor, subtitleColor, dateColor,timeColor;
  final String profileImage ;
 

  const DoctorWidget({super.key,
  this.color = Colors.white,
  required this.title,
  required this.subtitle,
  required this.date,
  required this.time,
  this.titleColor = Colors.white,
  this.subtitleColor= Colors.white,
  this.dateColor= Colors.white,
  this.timeColor= Colors.white,  
  required this.profileImage,  
 
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(profileImage),
            title: Text(
              title,
              style: TextStyle(color: titleColor, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              subtitle,
              style:TextStyle(color: subtitleColor, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
          ),
          Divider(
            color: Colors.white.withOpacity(0.14),
            height: 8,
          ),
          Padding(
            padding:const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              children: [
                IconTextWidget(
                  color: dateColor,
                  iconPath: "assets/svg/calendar.svg",
                  text: date,
                ),
                const Spacer(),
                IconTextWidget(
                  color: timeColor,
                  iconPath: "assets/svg/clock.svg",
                  text: time,
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
