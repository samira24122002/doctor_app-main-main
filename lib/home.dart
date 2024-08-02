import 'package:doctor_app/widget/categories.dart';
import 'package:doctor_app/widget/doctor.dart';
import 'package:doctor_app/widget/header.dart';
import 'package:doctor_app/widget/input.dart';
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              //header
              const HeaderWidget(),
              //doctor widget
              const DoctorWidget(
                color: const Color(0XFF4894FE),
                title: "Dr.Imran syahir",
                subtitle: "General Doctor ",
                time: "11:00 - 12:00 AM",
                date: "Sunday, 12 June",
                profileImage: "assets/images/profile.png",
               
              ),
              //search widget
              const InputWidget(),
              //grid view
              GridContainerWidget(),
              //list view
              ListDictorsWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class ListDictorsWidget extends StatelessWidget {
  const ListDictorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView( 
      padding: const EdgeInsets.all(8),
      children: <Widget>[  
       DoctorWidget(
        title: "Dr. Joseph Brostito",
        subtitle: "Dental Specialist",
        time: "Open at 17.00",
        date: "4,8 (120 Reviews)",
        titleColor: Color(0XFF0D1B34),
        subtitleColor: Color(0XFF8696BB),
        dateColor:Color(0XFFFEB052),
        timeColor: Color(0XFF4894FE),
        profileImage: "assets/images/dr_profile.png",
        
       ),
    
       SizedBox(height: 10),
    
       DoctorWidget(
        title: "Dr.Imran syahir",
        subtitle: "General Doctor",
        time: "Open at 17.00",
        date: "4,8 (120 Reviews)",
        titleColor: Color(0XFF0D1B34),
        subtitleColor: Color(0XFF8696BB),
        dateColor: Colors.white,
        timeColor: Colors.white,
        profileImage: "assets/images/profile.png",
        
    
       ),
    
      ],
      ),
    );
  }
}

class GridContainerWidget extends StatelessWidget {
  const GridContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 130,
      child: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 0,
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        children: <Widget>[  
          CategoryWidget(
            text: "Covid 19",
            iconPath: "assets/svg/sun.svg",
          ),
          CategoryWidget(
            text: "Doctor",
            iconPath: "assets/svg/profile-add.svg",
          ),
          CategoryWidget(
            text: "Medicine",
            iconPath: "assets/svg/link.svg",
          ),
          CategoryWidget(
            text: "Hospital",
            iconPath: "assets/svg/hospital.svg",
          ),
    
    
    
        ],
      ),
    );
  }
}
