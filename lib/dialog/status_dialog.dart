import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get_shit_together/themes/app_colors.dart';
import 'package:get_shit_together/themes/app_text_styles.dart';

class StatusDialog extends StatefulWidget {

  const StatusDialog({Key? key,}) : super(key: key);

  @override
  State<StatusDialog> createState() => _StatusDialogState();
}

class _StatusDialogState extends State<StatusDialog> {

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
                    '(Now lets see if you actually do it)',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.domineStyle.copyWith(  color: const Color(0xFFA66D82),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,)
                ),
              ),
              const SizedBox(height: 40,),
              const Divider(thickness: 1,height: 1,color: AppColors.primaryBlack,),

              const SizedBox(height: 40,),
              Container(
                width: double.infinity,

                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10,),color: AppColors.primaryBrown,child:Text(
                  'Completed',
                  style: AppTextStyles.domineStyle.copyWith(     color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,)
              ) ,),
              const SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Text(
                        'In Progress ',
                        style: AppTextStyles.domineStyle.copyWith(     color:AppColors.primaryBrown,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,)
                    ),
                    const SizedBox(height: 15,),

                    Text(
                        'Not even Started',
                        style: AppTextStyles.domineStyle.copyWith(     color: AppColors.primaryBrown,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,)
                    ),
                    const SizedBox(height: 15,),

                ],),
              ),





            ],
          ),
        ),
      );
  }
}