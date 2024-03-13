import 'package:flutter/material.dart';
import 'package:get_shit_together/screen/auth_screen/sign_in_screen.dart';
import '../../themes/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top,left: 10,right: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Image(
                image: AssetImage(
                    "assets/image/landing_screen/Placeholder Image.png")),

            const Center(child: Image(
                height: 150,width: 150,
                image: AssetImage("assets/image/auth_screen/3 1.png"))),
            const SizedBox(height: 10,),
            const Center(
              child: Text(
                'Welcome, Goal postponer !',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF695B5B),
                  fontSize: 16,
                  fontFamily: 'Mochiy Pop P One',
                  fontWeight: FontWeight.w400,

                  letterSpacing: 0.48,
                ),),
            ),
            const SizedBox(height: 10,),
            const Center(
              child:Text(
                  'Let\'s get you on the path to productivity.',
                  style: TextStyle(
                  color: Color(0xFF695B5B),
              fontSize: 16,
              fontFamily: 'Domine',
              fontWeight: FontWeight.w400,

            ),
    ),
            ),

            const SizedBox(height: 30,),
            const TextField(

              decoration: InputDecoration(
                hintText:'Full Name',
                hintStyle: TextStyle(
                  color: Color(0xFF695B5B),
                  fontSize: 16,
                  fontFamily: 'Domine',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
                enabledBorder:UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryColor)),
                focusedBorder: UnderlineInputBorder(

                  borderSide: BorderSide(color: AppColors.primaryColor),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const TextField(

              decoration: InputDecoration(
                hintText:'Email',
                hintStyle: TextStyle(
                  color: Color(0xFF695B5B),
                  fontSize: 16,
                  fontFamily: 'Domine',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
                enabledBorder:UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryColor)),
                focusedBorder: UnderlineInputBorder(

                  borderSide: BorderSide(color: AppColors.primaryColor),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintText:'Password',

                hintStyle: TextStyle(
                  color: Color(0xFF695B5B),
                  fontSize: 16,
                  fontFamily: 'Domine',
                  fontWeight: FontWeight.w700,
                ),
                enabledBorder:UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryColor)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryColor),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintText:'Confirm Password',

                hintStyle: TextStyle(
                  color: Color(0xFF695B5B),
                  fontSize: 16,
                  fontFamily: 'Domine',
                  fontWeight: FontWeight.w700,
                ),
                enabledBorder:UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryColor)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryColor),
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              width: MediaQuery.sizeOf(context).width*1,
              height: 44,
              decoration: ShapeDecoration(
                color: const Color(0xFFA66D82),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Center(child: Text(
                'SIGNUP',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'Mochiy Pop One',
                  fontWeight: FontWeight.w400,

                ),
              ),),
            ),

            const SizedBox(height: 20,),

            const Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
              Image(image: AssetImage("assets/image/auth_screen/logos_facebook.png")),
              SizedBox(width: 30,),
              Image(image: AssetImage("assets/image/auth_screen/grommet-icons_google.png")),
            ],),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInScreen()));

              },
              child: const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an account?  ',
                        style: TextStyle(
                          color: Color(0xFF695B5B),
                          fontSize: 16,
                          fontFamily: 'Domine',
                          fontWeight: FontWeight.w400,

                        ),
                      ),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          color: Color(0xFFB59C9C),
                          fontSize: 16,
                          fontFamily: 'Domine',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,

                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ],),
      ),
    ),);
  }
}
