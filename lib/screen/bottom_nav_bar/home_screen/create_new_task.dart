import 'package:flutter/material.dart';
import 'package:get_shit_together/dialog/calender_dialog.dart';
import 'package:svg_flutter/svg.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';


class CreateNewTask extends StatefulWidget {
  const CreateNewTask({super.key});

  @override
  State<CreateNewTask> createState() => _CreateNewTaskState();
}

class _CreateNewTaskState extends State<CreateNewTask> {
  int _currentIndex=0;
  final List tabData=[
    'Save',
    'Edit',
    'Delete',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8E8E8),
      appBar: AppBar(
        elevation: 0,backgroundColor: const Color(0xffE8E8E8),
        leading: const Padding(
          padding: EdgeInsets.only(top: 10,left: 10),
          child: Image(image: AssetImage("assets/icon/bottom_nav/Get 1.png"),),
        ),
        actions: [
          GestureDetector(
              onTap: () {

              },
              child: SvgPicture.asset("assets/icon/bottom_nav/Vector.svg")),const SizedBox(width: 10,)
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 15,right: 15),
        children: [
          const Image(
            height: 100,
              image: AssetImage("assets/image/home/Box.png")),
          const SizedBox(height: 10,),
          Center(
            child: Text(
              'Stop daydreaming! \nAdd a damn task already',
              textAlign: TextAlign.center,
              style:AppTextStyles.popOneStyle.copyWith(  color: const Color(0xFF695B5B),
                fontSize: 12,
                fontWeight: FontWeight.w400,),
            ),
          ),
          const SizedBox(height: 10,),
          Center(
            child: Text(
              'See that big plus button there? It\'s not just for decoration, you know. Click it to add a task, you useless creature.',
              textAlign: TextAlign.center,
              style: AppTextStyles.domineStyle.copyWith(color: const Color(0xFF695B5B),
                fontSize: 13,
                fontWeight: FontWeight.w400,)
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: TextField(

                    decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                          borderSide: const BorderSide(color: AppColors.primaryBlack)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1),
                        borderSide: const BorderSide(color: AppColors.primaryBlack),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Container(height: 40,color: AppColors.primaryLight,padding: const EdgeInsets.symmetric(horizontal: 15),child: const Icon(Icons.add,color: AppColors.primaryWhite,),)
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow:[
                BoxShadow(
                    offset: Offset(0,4),
                    spreadRadius: 0.4,blurRadius: 0.4,color: AppColors.primaryGray.withOpacity(0.10)
                )
              ],

              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
              Row(
                crossAxisAlignment:   CrossAxisAlignment.center,
                children: [
                  Text(
                      'Task Title',
                      style: AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
                        fontSize: 16,)
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color:AppColors.primaryGray.withOpacity(0.10))),
                    child: const Icon(Icons.more_horiz,color: AppColors.primaryBlack,),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Text(
                  'Description',
                  style: AppTextStyles.domineStyle.copyWith( color: const Color(0x7F1C1D22),
                    fontSize: 14,)
              ),
              const SizedBox(height: 40,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width*0.25,

                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFA66D82),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Due Date',
                        style: AppTextStyles.domineStyle.copyWith(  color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,)
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width*0.25,

                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFA66D82),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    child: Center(
                      child: Text(
                          'Priority',
                          style: AppTextStyles.domineStyle.copyWith(  color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,)
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width*0.25,

                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFA66D82),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    child: Center(
                      child: Text(
                          'Status',
                          style: AppTextStyles.domineStyle.copyWith(  color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,)
                      ),
                    ),
                  ),
                ],
              ),
            ],
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(tabData.length, (index) => Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    _currentIndex=index;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        tabData[index].toString(),
                        style:AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,)
                    ),
                    const SizedBox(height: 6,),
                    Container(
                      height: 3,color: _currentIndex==index?const Color(0xFFA66D82):Colors.transparent,
                      width: MediaQuery.sizeOf(context).width*0.13,
                    )


                  ],),
              ),
            ),),
          ),
          const SizedBox(height: 20,),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow:[
                BoxShadow(
                  offset: Offset(0,4),
                  spreadRadius: 0.4,blurRadius: 0.4,color: AppColors.primaryGray.withOpacity(0.10)
                )
              ],

              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
              Row(
                crossAxisAlignment:   CrossAxisAlignment.center,
                children: [
                  Text(
                      'Task Title',
                      style: AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
                        fontSize: 16,)
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color:AppColors.primaryGray.withOpacity(0.10))),
                    child: const Icon(Icons.more_horiz,color: AppColors.primaryBlack,),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Text(
                  'Description',
                  style: AppTextStyles.domineStyle.copyWith( color: const Color(0x7F1C1D22),
                    fontSize: 14,)
              ),
              const SizedBox(height: 40,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        showDialog(context: context, builder: (BuildContext context) { return   CalenderDialog();
                          },
                        );
                      }
                      );
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width*0.25,

                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFA66D82),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Center(
                        child: Text(
                            'Due Date',
                            style: AppTextStyles.domineStyle.copyWith(  color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,)
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width*0.25,

                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFA66D82),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    child: Center(
                      child: Text(
                          'Priority',
                          style: AppTextStyles.domineStyle.copyWith(  color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,)
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width*0.25,

                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFA66D82),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    child: Center(
                      child: Text(
                          'Status',
                          style: AppTextStyles.domineStyle.copyWith(  color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,)
                      ),
                    ),
                  ),
                ],
              ),
            ],
            ),
          ),
          const SizedBox(height: 20,),



      ],),
    );
  }
}
