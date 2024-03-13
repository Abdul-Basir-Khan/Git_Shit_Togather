import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import '../../list_of_all_screens/list_of_screens.dart';

class HabitScreen extends StatefulWidget {
  const HabitScreen({super.key});

  @override
  State<HabitScreen> createState() => _HabitScreenState();
}

class _HabitScreenState extends State<HabitScreen> {

  bool _isCheck=false;
  DateTime currentMonth=DateTime.now();
  @override
  Widget build(BuildContext context) {

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      children: [
        Text(
            'Habit Havoc',
            textAlign: TextAlign.center,
            style: AppTextStyles.popOneStyle.copyWith(   color: const Color(0xFF695B5B),
              fontSize: 12,
              fontWeight: FontWeight.w400,)
        ),
        const SizedBox(height: 10,),
        const Image(
            height: 200,width: 200,fit: BoxFit.cover,
            image: AssetImage("assets/image/home/6 92.png")),
        const SizedBox(height: 20,),
        Text(
            'Mastering Life, One Habit at a Time!',
            style: AppTextStyles.popOneStyle.copyWith(  color: const Color(0xFF695B5B),
              fontSize: 15,
              fontWeight: FontWeight.w400,)
        ),
        const SizedBox(height: 30,),
        Container(color: AppColors.primaryWhite,padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10,),child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
          const Image(
              height: 25,width: 25,
              image: AssetImage("assets/image/auth_screen/bars.png")),
          const SizedBox(width: 10,),

          Text(DateFormat('d MMMM y').format(currentMonth),style: AppTextStyles.domineStyle.copyWith(color: const Color(0xFF695B5B),
            fontSize: 16,
            fontWeight: FontWeight.w400,),),

          const SizedBox(width: 10,),
          const Image(
              height: 25,width: 25,
              image: AssetImage("assets/image/auth_screen/calendar-alt.png")),
          const Spacer(),
          const Icon(Icons.search,color: AppColors.primaryBrown,),
          const SizedBox(width: 10,),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: ShapeDecoration(
              color: const Color(0xFFA66D82),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
            ),
            child:

            const Icon(Icons.add_circle_outline_sharp,color: AppColors.primaryWhite,),
          )

        ],
        ),),
        const SizedBox(height: 20,),

        GridView.builder(
          itemCount: calenderData.length,shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10,
              childAspectRatio: 0.93
          ), itemBuilder: (BuildContext context, int index) { return Container(
          padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 5),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  calenderData[index].title.toString(),
                  textAlign: TextAlign.center,
                  style: AppTextStyles.popOneStyle.copyWith(color: const Color(0xFFA66D82),
                    fontSize: 8,
                    fontWeight: FontWeight.w400,)
              ),
              const SizedBox(height: 10,),
              Text(
                  calenderData[index].description.toString(),
                  textAlign: TextAlign.center,
                  style:

                  AppTextStyles.popOneStyle.copyWith(
                    color: Colors.black,
                    fontSize: 6,
                    fontWeight: FontWeight.w400,
                  )
              ),
              Row(
                children: [
                  const Spacer(),
                  StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) { return

                    Checkbox(
                      checkColor: AppColors.primaryWhite,

                      side: const BorderSide(
                          color: AppColors.primaryBrown
                      ),
                      activeColor: AppColors.primaryBrown,
                      value: _isCheck, onChanged: (newValue ){
                    setState(() {
                      _isCheck=newValue!;
                    });


                  }); },



                  )
                ],
              )


            ],
          ),
        ); }, ),





        const SizedBox(height: 20,),
        GestureDetector(
          onTap: (){
            setState(() {

            });
          },
          child: Center(
            child: Container(width: MediaQuery.sizeOf(context).width*0.44,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: ShapeDecoration(
                color: const Color(0xFFA66D82),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                child: Text(

                  'Yeah Yeah Feel Good,now Move on',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.domineStyle.copyWith(color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}
