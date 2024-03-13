import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../widgets/custom_buttom.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB69C9C),
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, left: 15, right: 15),
        child: ListView(
          children: [
            const Text(
              'Terms & Conditions',
              style: TextStyle(
                color: AppColors.primaryBrown,
                fontSize: 32,
                fontFamily: 'Mochiy Pop One',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 1,
              decoration: const ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
              ),
            ),
            const SizedBox(height: 10),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'To get started, simply download our app from the App Store or Google Play Store. Once installed, create an account and start Welcome to Get Your Shit Together, where sass meets productivity (and sometimes they clash, but that\'s half the fun).\nBefore you dive into the chaos-conquering madness, please read these Terms and Conditions carefully. By using the app, you agree to the following:\n',
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '\n1. Brace Yourself for Sass:\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text:
                        'This app isn\'t afraid to dish out some tough love (and maybe a few eye rolls). If you\'re easily offended or allergic to sarcasm, you might want to stick to a boring, generic to-do list app. We won\'t judge (well, maybe a little).\nYou can always opt out of the pop-up insults if you need a break from the sass. But honestly, where\'s the fun in that?\n\n',
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '2. Use at Your Own Risk:\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text:
                        'We\'re not responsible for any hurt feelings, bruised egos, or sudden urges to clean your entire house. Proceed with caution (and maybe a glass of wine).\nIf you experience any side effects like increased productivity, decreased procrastination, or a sudden appreciation for Karen memes, please consult a medical professional (or just enjoy the feeling while it lasts).\n',
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '\n3. No Whining Allowed:\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text:
                        'We\'re here to motivate you, not coddle you. If you can\'t handle a little tough love, this app isn\'t for you. Go find a hug elsewhere.\nComplaints can be directed to the nearest brick wall. They\'re excellent listeners (and they won\'t talk back).\n4. Keep It Legal, Karen:\nDon\'t use this app to harass, stalk, or otherwise annoy anyone. That\'s not cool, even for a Karen.\nDon\'t use it to break any laws or do anything that would make your mother ashamed (unless she\'s a Karen too, in which case, go for it)',
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '5. Don\'t Sue Us, Bro:\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text:
                        'You agree to use this app at your own risk and not hold us liable for any damages, emotional or otherwise. We\'re just here to help you get your shit together, not become your therapist.\nIf you do try to sue us, we\'ll unleash our full Karen fury upon you. And trust us, you don\'t want to see that.\n\n',
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '6. Privacy Stuff (Yawn, But Important):\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text:
                        'We respect your privacy and won\'t sell your data to anyone, not even for a million coupons.\nWe\'ll only use your information to make the app better and send you occasional updates (which you can unsubscribe from if you\'re a party pooper).\n',
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '\n7. Updates and Changes:\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text:
                        'We might update these Terms and Conditions from time to time, so check back occasionally to avoid any surprises (like finding out we\'ve sold your soul to the devil, but we\'d never do that, promise)\n',
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '.\n8. Have Fun, Get Stuff Done:\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text:
                        'That\'s the whole point of this app, after all. So go forth, conquer your chaos, and unleash your inner productivity beast! (Just try not to unleash your inner Karen too much, okay?)\n\n\nBy using this app, you agree to all of the above. If you don\'t agree, please close the app and go find a less sassy way to organize your life. But seriously, give it a try. You might just surprise yourself (and us).\nNow get out there and get shit done! (Or don\'t, but we\'ll judge you.) ',
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            CustomButton(
                onTap: () {},
                title: 'Now  agree and get ready ',
                height: 50,
                backgroundColor: AppColors.primaryBrown,
                textColor: AppColors.primaryWhite,
                borderColor: AppColors.primaryBlack,
                width: MediaQuery.sizeOf(context).width * 0.90),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 1,
              decoration: const ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
