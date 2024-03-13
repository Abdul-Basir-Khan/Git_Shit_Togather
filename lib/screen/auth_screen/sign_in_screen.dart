import 'package:flutter/material.dart';
import 'package:get_shit_together/screen/auth_screen/sign_up_screen.dart';
import '../../themes/app_colors.dart';
import '../bottom_nav_bar/bottom_nav_app_bar.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
            const SizedBox(height: 20,),
            const Center(
              child: Text(
                'Sign In \nProcrastinator',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF695B5B),
                  fontSize: 32,
                  fontFamily: 'Mochiy Pop One',
                  fontWeight: FontWeight.w400,
        
                ),
              ),
            ),
            const SizedBox(height: 30,),
            const Center(child: Image(image: AssetImage("assets/image/auth_screen/4 1.png"))),
            const SizedBox(height: 30,),
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
            const SizedBox(height: 20,),
            const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintText:'Password',
                suffixIcon: Text(
                  'Forgot password?',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFB59C9C),
                    fontSize: 16,
                    fontFamily: 'Domine',
                    fontWeight: FontWeight.w700,
                  ),
                ),
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
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomNavAppBar()));

              },
              child: Container(
                width: MediaQuery.sizeOf(context).width*1,
                height: 44,
                decoration: ShapeDecoration(
                  color: const Color(0xFFA66D82),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Center(child: Text(
                  'LOGIN',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Mochiy Pop One',
                    fontWeight: FontWeight.w400,

                  ),
                ),),
              ),
            ),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));

              },
              child: const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Dont have an account? ',
                        style: TextStyle(
                          color: Color(0xFF695B5B),
                          fontSize: 16,
                          fontFamily: 'Domine',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: ' Sign up',
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
            const SizedBox(height: 30,),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Divider(
                    thickness: 2,height: 2,color:Color(0xFFA8A6A7),
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  'Sign In with ',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Domine',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Divider(
                    thickness: 2,height: 2,color:Color(0xFFA8A6A7),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            const Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
              Image(image: AssetImage("assets/image/auth_screen/logos_facebook.png")),
              SizedBox(width: 30,),
              Image(image: AssetImage("assets/image/auth_screen/grommet-icons_google.png")),
            ],)
        ],),
      ),
    ),);
  }
}
