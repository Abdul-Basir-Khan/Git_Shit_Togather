import 'package:flutter/material.dart';
import 'package:get_shit_together/themes/app_colors.dart';
import 'package:get_shit_together/themes/app_text_styles.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class CalenderView extends StatefulWidget {
  const CalenderView({super.key});

  @override
  State<CalenderView> createState() => _CalenderViewState();
}

class _CalenderViewState extends State<CalenderView> {
  DateTime currentMonth=DateTime.now();
 bool _isMove=false;

  @override
  Widget build(BuildContext context) {
    return

      ListView(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      children: [
        Text(
          ' Time Flies, Tasks Conquer: Your Month at a Glance',
          textAlign: TextAlign.center,
          style: AppTextStyles.popOneStyle.copyWith(   color: Color(0xFF695B5B),
            fontSize: 12,
            fontWeight: FontWeight.w400,)
        ),
        SizedBox(height: 10,),
        Image(
            height: 200,width: 200,fit: BoxFit.cover,
            image: AssetImage("assets/image/home/30 1 (1).png")),
SizedBox(height: 20,),
        Container(color: AppColors.primaryWhite,padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10,),child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
            Image(
                height: 25,width: 25,
                image: AssetImage("assets/image/auth_screen/bars.png")),
          SizedBox(width: 10,),

          Text(DateFormat('MMMM y').format(currentMonth),style: AppTextStyles.domineStyle.copyWith(color: Color(0xFF695B5B),
            fontSize: 16,
            fontWeight: FontWeight.w400,),),

          SizedBox(width: 10,),
            Image(
                height: 25,width: 25,
                image: AssetImage("assets/image/auth_screen/calendar-alt.png")),
          Spacer(),
          Icon(Icons.search,color: AppColors.primaryBrown,),
          SizedBox(width: 10,),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: ShapeDecoration(
              color: Color(0xFFA66D82),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
            ),
            child:

          Icon(Icons.add_circle_outline_sharp,color: AppColors.primaryWhite,),
          )

        ],
        ),),
        SizedBox(height: 20,),
        SfCalendar(

          headerHeight: 0, // Ensure the header height is zero
          viewHeaderHeight: 0, // Ensure the view header height is zero
          cellBorderColor: Color(0xf60DADCE099),
          view: CalendarView.month,
        ),
        SizedBox(height: 20,),
        GestureDetector(
          onTap: (){
            setState(() {
              _isMove=!_isMove;
            });
          },
          child: Center(
            child: Container(width: MediaQuery.sizeOf(context).width*0.38,
             padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: ShapeDecoration(
                color: Color(0xFFA66D82),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  'Now Move On',
                  style: AppTextStyles.domineStyle.copyWith(color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,),
                ),
              ),
            ),
          ),
        )

      ],
    )
      ;
  }
}

class CalenderModel{
  String title;
  String description;

  CalenderModel({required this.title,required this.description});
}

