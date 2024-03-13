import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get_shit_together/themes/app_colors.dart';
import 'package:get_shit_together/themes/app_text_styles.dart';

class PreorityDialog extends StatefulWidget {

  const PreorityDialog({Key? key,}) : super(key: key);

  @override
  State<PreorityDialog> createState() => _PreorityDialogState();
}

class _PreorityDialogState extends State<PreorityDialog> {

  @override
  Widget build(BuildContext context) {
    return
      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Dialog(
          backgroundColor:Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  '(As if you care)',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.domineStyle.copyWith(  color: const Color(0xFFA66D82),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,)
                ),
              ),
              const SizedBox(height: 20,),
              const Divider(thickness: 1,height: 1,color: AppColors.primaryBlack,),
              const SizedBox(height: 10,),
              Center(
                child: Text(
                  'but still select',
                  textAlign: TextAlign.center,
                  style:AppTextStyles.domineStyle.copyWith( color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,)
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10,),color: const Color(0xffE63434),child:Text(
                'Urgent AF',
                style: AppTextStyles.domineStyle.copyWith(     color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,)
              ) ,),


              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10,),color: const Color(0xffFF9F2D),child:Text(
                  'Do it now ',
                  style: AppTextStyles.domineStyle.copyWith(     color:AppColors.primaryBrown,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,)
              ) ,),


              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10,),color: const Color(0xff0085FF),child:Text(
                  'Stop being Lazy',
                  style: AppTextStyles.domineStyle.copyWith(     color: AppColors.primaryBrown,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,)
              ) ,),


              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                color: Color(0xff73D346),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10,),child:Text(
                  'Meh Whenever',
                  style: AppTextStyles.domineStyle.copyWith(     color:AppColors.primaryBrown,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,)
              ) ,),


            ],
          ),
        ),
      );
  }
}