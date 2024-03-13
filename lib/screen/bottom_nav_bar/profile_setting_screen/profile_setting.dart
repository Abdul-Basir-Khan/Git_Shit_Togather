import 'package:flutter/material.dart';
import 'package:get_shit_together/themes/app_text_styles.dart';
import 'package:get_shit_together/widgets/custom_textfield.dart';

import '../../../themes/app_colors.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  int _currentIndex=0;
  bool _isCheck=false;
  bool _isCheckOne=false;
  final List tabData=[
    'Starter',
    'Grow',
    'Life Time',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0,backgroundColor: const Color(0xffFFFFFF),
        leading: const Padding(
          padding: EdgeInsets.only(top: 10,left: 10),
          child: Image(

            image: AssetImage("assets/icon/bottom_nav/Get 1.png"),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: ListView(
        children: [
          const Image(
              height: 150,width: 150,fit: BoxFit.cover,
              image: AssetImage("assets/image/auth_screen/43 1 (1).png")),
          const SizedBox(height: 10,),
          Text(
            'Settings',
            textAlign: TextAlign.center,
            style: AppTextStyles.popOneStyle.copyWith( color: const Color(0xFF695B5B),
              fontSize: 32,
              fontWeight: FontWeight.w400,)
          ),

          const SizedBox(height: 10,),
          const Row(children: [
            Spacer(),
            Image(
                height: 25,width: 25,
                image: AssetImage("assets/image/auth_screen/carbon_edit.png")),
          ],),

          const SizedBox(height: 10,),
        TextField(
          decoration: InputDecoration(
            hintText: 'Name',
            hintStyle:AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
              fontSize: 16,
              fontWeight: FontWeight.w700,),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: AppColors.primaryBrown)),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                  width: 2,
                  color: AppColors.primaryBrown),
            ),
          ),
        ),
          const SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              hintStyle:AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
                fontSize: 16,
                fontWeight: FontWeight.w700,),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: AppColors.primaryBrown)),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: AppColors.primaryBrown),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle:AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
                fontSize: 16,
                fontWeight: FontWeight.w700,),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: AppColors.primaryBrown)),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: AppColors.primaryBrown),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
              hintText: 'Phone',
              hintStyle:AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
                fontSize: 16,
                fontWeight: FontWeight.w700,),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: AppColors.primaryBrown)),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: AppColors.primaryBrown),
              ),
            ),
          ),

          const SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
              hintText: 'Location',
              hintStyle:AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
                fontSize: 16,
                fontWeight: FontWeight.w700,),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: AppColors.primaryBrown)),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: AppColors.primaryBrown),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            'My Subscription Plan',
            style: AppTextStyles.domineStyle.copyWith(   color: const Color(0xFF695B5B),
              fontSize: 16,
              fontWeight: FontWeight.w700,)
          ),
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
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
                        style:AppTextStyles.domineStyle.copyWith( color:const Color(0xFFA66D82),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,)
                    ),
                    const SizedBox(height: 6,),
                    Container(
                      height: 3,color: _currentIndex==index?const Color(0xFFA66D82):Colors.transparent,
                      width: MediaQuery.sizeOf(context).width*0.20,
                    )


                  ],),
              ),
            ),),
          ),
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Text(
              'Pop Ups',
              style: AppTextStyles.domineStyle.copyWith(    color: AppColors.primaryBrown,
                fontSize: 16,
                fontWeight: FontWeight.w700,)
            ),
            const SizedBox(width: 20,),
            Text(
                'Enable',
                style: AppTextStyles.domineStyle.copyWith(    color: const Color(0xFFA66D82),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,)
            ),
            Checkbox(
                checkColor: AppColors.primaryWhite,

                side: const BorderSide(
                    color: AppColors.primaryBrown
                ),
                activeColor: AppColors.primaryBrown,
                value: _isCheck, onChanged: (newValue ){
              setState(() {
                _isCheck=newValue!;
                _isCheckOne=false;
              });


            }),
            Text(
                'Disable',
                style: AppTextStyles.domineStyle.copyWith(    color: const Color(0xFFA66D82),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,)
            ),
            Checkbox(
                checkColor: AppColors.primaryWhite,

                side: const BorderSide(
                    color: AppColors.primaryBrown
                ),
                activeColor: AppColors.primaryBrown,
                value: _isCheckOne, onChanged: (newValue ){
              setState(() {
                _isCheckOne=newValue!;
                _isCheck=false;
              });


            }),
          ],
          ),
          const SizedBox(height: 20,),
          Center(
            child: Container(
              width: MediaQuery.sizeOf(context).width*0.48,
                     padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: ShapeDecoration(
                color: const Color(0xFF695B5B),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              ),
              child:Center(
                child: Text(
                  'Save changes',
                  style: AppTextStyles.domineStyle.copyWith(color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,),
                ),
              )
            ),
          )
          

        ],
            ),
      ),);
  }
}
