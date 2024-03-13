import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_styles.dart';
import '../../widgets/custom_buttom.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,children: [
          const Text(
            'Welcome!!',
            style: TextStyle(
              color: Color(0xFFA66D82),
              fontSize: 36,
              fontFamily: 'Mochiy Pop One',
              fontWeight: FontWeight.w400,
              height: 0.03,
            ),
          ),
          const SizedBox(height: 60,),
          Text('Well, hello there, procrastinator extraordinaire! welcome to the app that\'s about to whip your life into shape (whether you like or not). ',style: AppTextStyles.popOneStyle.copyWith(color: AppColors.primaryBrown,fontSize: 36,fontWeight: FontWeight.w400),)
          ,
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                  onTap: () {},
                  title: 'Get Started',
                  height: 46,
                  backgroundColor: AppColors.primaryLight,
                  textColor: AppColors.primaryWhite,
                  borderColor: Colors.transparent,
                  width: MediaQuery.sizeOf(context).width * 0.45),
              const Spacer(),
              CustomButton(
                onTap: () {},
                title: 'Learn More',
                height: 46,
                backgroundColor: AppColors.primaryWhite,
                textColor: AppColors.primaryBlack,
                borderColor: AppColors.primaryLight,
                width: MediaQuery.sizeOf(context).width * 0.45,
              ),
            ],
          ),
          const SizedBox(height: 30,),
          const Text(
            'About Us',
            style: TextStyle(
              color: Color(0xFFA66D82),
              fontSize: 36,
              fontFamily: 'Mochiy Pop One',
              fontWeight: FontWeight.w400,
              height: 0.03,
            ),
          ),
          const SizedBox(height: 30,),
          const Text(
            'The "About Us" page: Where we pretend to be humble (but secretly bask in your admiration).\n\nGet to know the boss... I mean, the developers of Get Your Shit Together.\n\nOur mission: To make the world a less messy, one to-do list at a time (while judging everyone in the process).\n\nDisclaimer: We\'re not responsible for any increased levels of productivity or decreased levels of procrastination (but wouldn\'t that be nice?).',
            style: TextStyle(
              color: Color(0xFF695B5B),
              fontSize: 20,
              fontFamily: 'Domine',
              fontWeight: FontWeight.w700,

            ),
          ),
          const SizedBox(height: 20,),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(
                  color: Color(0xFFA66D82),
                  fontSize: 16,
                  fontFamily: 'Mochiy Pop One',
                  fontWeight: FontWeight.w400,

                ),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios,color: AppColors.primaryBrown,),
              Spacer(),
              Image(image: AssetImage("assets/image/landing_screen/Clip path group.png"))
            ],
          ),
          const SizedBox(height: 40,),
          const Text(
            'Unleash Productivity',
            style: TextStyle(
              color: Color(0xFF695B5B),
              fontSize: 36,
              fontFamily: 'Mochiy Pop One',
              fontWeight: FontWeight.w400,
              height: 0.03,
            ),
          ),
          const SizedBox(height: 25,),
          const Text(
            'Tired of living in a chaotic wasteland of crumpled socks and missed deadlines? Introducing Get Your Shit Together ,the app that’s about to slap some productivity sense into you. But dont worry, we’ll do it with sass and a sprinkle of humor (mostly sass though) our comprehensive to-do list app that simplifies task management and enhances productivity. Stay organized, prioritize tasks, and never miss a deadline.',
            style: TextStyle(
              color: Color(0xFFA66D82),
              fontSize: 20,
              fontFamily: 'Domine',
              fontWeight: FontWeight.w700,

            ),
          ),
          const SizedBox(height: 20,),
          const Image(image: AssetImage("assets/image/landing_screen/bout.png")),
          const SizedBox(height: 20,),
          const Text(
            'How do we do it',
            style: TextStyle(
              color: Color(0xFF695B5B),
              fontSize: 32,
              fontFamily: 'Mochiy Pop One',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10,),
          const Text(
            'With just the right sprinkle of sass and light-hearted insults, we\'re here to whip those to-dos into shape. Because let\'s face it, sometimes you need a digital kick in the behind to conquer your day.\n\nSo, grab your coffee, muster your willpower, and let\'s show those tasks who\'s the boss around here! It\'s time to get your shit together, one organized task at a time."',
            style: TextStyle(
              color: Color(0xFFA66D82),
              fontSize: 20,
              fontFamily: 'Domine',
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
            SvgPicture.asset('assets/image/landing_screen/Relume.svg'),
            const SizedBox(width: 20,),
            const Text(
              'Optional Pop-Up Insults',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Domine',
                fontWeight: FontWeight.w700,
              ),
            )
          ],),
          const SizedBox(height: 20,),
          const Padding(padding: EdgeInsets.all(15),child: Text(
            'Like a little verbal smackdown with your tasks? We’ve got you covered. (But don’t worry, you can turn them off for the faint of heart....or those with fragile egos.)',
            style: TextStyle(
              color: Color(0xFF695B5B),
              fontSize: 20,
              fontFamily: 'Domine',
              fontWeight: FontWeight.w700,
            ),
          ),),
          const SizedBox(height: 20,),
          Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
            SvgPicture.asset('assets/image/landing_screen/Relume.svg'),
            const SizedBox(width: 20,),
            const Expanded(
              child: Text(
                'And More! Because We’re Fancy Like That:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Domine',
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],),
          const SizedBox(height: 20,),
          const Text.rich(
            TextSpan(
              children: [

                TextSpan(
                  text: 'Motivational quotes with a Karen twist: Early bird gets the worm, late bird gets...a coffee break on someone else’s dime? Get to work!”',
                  style: TextStyle(
                    color: Color(0xFFA76D83),
                    fontSize: 20,
                    fontFamily: 'Domine',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Center(
            child: Container(
              width:MediaQuery.sizeOf(context).width*0.70,
              height: 54,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: const ShapeDecoration(
                color: Color(0xFF695B5B),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Join for Harmony!',
                    style: TextStyle(
                      color: Color(0xFFE7E7E7),
                      fontSize: 20,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                      height: 0.07,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),

        ],
        ),
      ),


        Container(
          width: double.infinity,

          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 64),
          clipBehavior: Clip.antiAlias,
          decoration: const ShapeDecoration(
            color: Color(0xFFB59C9C),
            shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                'Disclaimer: Laughter Warning!',
                style: TextStyle(
                  color: Color(0xFFE7E7E7),
                  fontSize: 36,
                  fontFamily: 'Mochiy Pop One',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Image(image: AssetImage("assets/image/landing_screen/7 5170174.png")),
              const SizedBox(height: 20,),
              const Text(
    'Before you dive into the app, please buckle up and prepare for a dose of humor. We want to make work fun and engaging, but some of the content might tickle your funny bone in ways that could be considered offensive by certain users.\n\nThink of it like a stand-up comedy routine for your productivity. Sometimes the best way to deal with the mundane is to laugh at it, even if the jokes are a little bit edgy.\n\nIf you find any content too spicy for your taste, please don\'t hesitate to let us know. We\'ll be happy to adjust the spice level for you.\n\n By using this app, you acknowledge and agree to the terms of this disclaimer.\n\n So, come on in, loosen up, and get ready for some laughs!\nJust remember, not everyone has the same sense of humor. Be respectful of others, and if you\'re unsure about something, err on the side of caution.\nNow go forth and conquer your tasks, one hilarious joke at a time!\n\n',
    style: TextStyle(
    color: Color(0xFFE7E7E7),
    fontSize: 16,
    fontFamily: 'Domine',
    fontWeight: FontWeight.w700,

    ),
    ),
              const SizedBox(height: 20,),
              const Center(
                child: Text(
                  'Thank you for understanding! \n We hope you enjoy the app!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF695B5B),
                    fontSize: 20,
                    fontFamily: 'Mochiy Pop One',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.20,
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              Center(
                child: Container(
                  width: MediaQuery.sizeOf(context).width*0.84,
                  height: 48,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: const ShapeDecoration(
                    color: Color(0xFF695B5B),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Now Get Ready To Conquer Your Chaos ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Domine',
                          fontWeight: FontWeight.w700,

                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50,),
            ],
          ),
        ),
        const SizedBox(height: 50,),
      ],
    );
  }
}
