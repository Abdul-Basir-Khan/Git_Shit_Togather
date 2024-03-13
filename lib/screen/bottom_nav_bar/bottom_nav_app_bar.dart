import 'package:flutter/material.dart';
import 'package:get_shit_together/screen/bottom_nav_bar/calender_view/calender_view.dart';
import 'package:get_shit_together/screen/bottom_nav_bar/habbit/habbit.dart';
import 'package:get_shit_together/screen/bottom_nav_bar/home_screen/create_new_task.dart';
import 'package:get_shit_together/screen/bottom_nav_bar/payment_screen/add_card.dart';
import 'package:get_shit_together/screen/bottom_nav_bar/profile_setting_screen/profile_setting.dart';
import 'package:get_shit_together/screen/bottom_nav_bar/progress_screen/progress_screen.dart';
import 'package:svg_flutter/svg.dart';
import '../../themes/app_colors.dart';
import '../list_of_all_screens/list_of_screens.dart';
import 'home_screen/home_screen.dart';




class BottomNavAppBar extends StatefulWidget {
  final int currentIndex;
  const BottomNavAppBar({super.key,  this.currentIndex = 0});

  @override
  State<BottomNavAppBar> createState() => _BottomNavAppBarState();
}

class _BottomNavAppBarState extends State<BottomNavAppBar> {
  final List<BottomModel> bottomData = [
    BottomModel(
        imagePath: 'assets/icon/bottom_nav/tdesign_task.svg',
        title: 'Tasks'),
    BottomModel(
        imagePath: 'assets/icon/bottom_nav/uit_calender.svg',
        title: 'Calender'),
    BottomModel(
        imagePath: 'assets/icon/bottom_nav/akar-icons_schedule.svg',
        title: 'Habits'),
  ];


  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


final List pages = [
  const HomeScreen(),
  const CalenderView(),
  const HabitScreen(),
];
@override
  void initState() {
  _currentIndex = widget.currentIndex;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        elevation: 0,backgroundColor: const Color(0xffE8E8E8),
        leading: const Padding(
          padding: EdgeInsets.only(top: 10,left: 10),
          child: Image(

            image: AssetImage("assets/icon/bottom_nav/Get 1.png"),),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                 _scaffoldKey.currentState!.openDrawer();
                });
              },
              child: SvgPicture.asset(
                  height: 25,width: 25,
                  "assets/icon/bottom_nav/Vector.svg")),const SizedBox(width: 10,)
        ],
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffE8E8E8),
body: pages[_currentIndex],

      bottomNavigationBar: BottomAppBar(
        surfaceTintColor:const Color(0xffE8E8E8),
        color: const Color(0xffE8E8E8),
        padding: EdgeInsets.zero,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: const BoxDecoration(
              color: Color(0xffB69C9C),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: AppColors.primaryGray,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                    spreadRadius: 0.4)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              bottomData.length,
              (index) => BottomTab(
                onTap: () {
                  onTabTapped(index);

                },
                color: _currentIndex == index
                    ? AppColors.primaryWhite
                    : AppColors.primaryBrown,
                title: bottomData[index].title.toString(),
                imagePath: bottomData[index].imagePath.toString(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomTab extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  final String title;
  final Color color;

  const BottomTab({
    super.key,
    required this.onTap,
    required this.title,
    required this.color,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          SvgPicture.asset(
            imagePath,
            color: color,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: 15,
              fontFamily: 'Mochiy Pop One',
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}

class BottomModel {
  final String imagePath;
  final String title;

  BottomModel({required this.imagePath, required this.title});
}


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, left: 10, right: 10),
        color: const Color(0xffE8E8E8), // Background color
        child: ListView(
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.primaryBrown,
                  child: Text(
                    "M",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Name',
                  style: TextStyle(
                    color: Color(0xFF695B5B),
                    fontSize: 12,
                    fontFamily: 'Domine',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.primaryBlack,
                )
              ],
            ),
            const SizedBox(height: 20,),
            ...List.generate(
              iconsForBottomNavBar.length,
                  (index) => ListTile(
                onTap: (){
                  if(index == 0 || index == 5 || index==6){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
                      return BottomNavAppBar(currentIndex: index== 0 ? 0 : index == 5 ? 1 :  index == 6 ? 2:index,);
                    }));
                  } else if(index == 4){
                    Navigator.pop(context);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
                      return const ProgressScreen();
                    }));
                  }
                  else if(index == 1){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return const ProfileSetting();
                    }));
                  }
                  else if(index == 2){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return const CreateNewTask();
                    }));
                  }
                  else if(index == 7){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return const AddCardScreen();
                    }));
                  }
                },
                leading: SvgPicture.asset(iconsForBottomNavBar[index].toString()),
                title: Text(
                  itemListForBottomNavBar[index].toString(),
                  style: const TextStyle(
                    color: Color(0xFF695B5B),
                    fontSize: 16,
                    fontFamily: 'Domine',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
