import 'package:flutter/material.dart';

import '../themes/app_text_styles.dart';


class CustomButton extends StatelessWidget {
  final VoidCallback  onTap;
  final String  title;
  final double height;
  final double width;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  const CustomButton({Key? key, required this.onTap, required this.title, required this.height, required this.backgroundColor, required this.textColor, required this.borderColor, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        height:height ,
width: width,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(5),
            color:backgroundColor,),
        child: Center(
          child: Text(
            title,
            style:
                AppTextStyles.domineStyle.copyWith(color: textColor,fontWeight: FontWeight.w400,fontSize: 16,)
          ),
        ),
      ),
    );
  }
}
