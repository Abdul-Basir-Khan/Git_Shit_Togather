import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
class PriceScreen extends StatelessWidget {
  const PriceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
        const SizedBox( height:40),
          const Text(
          'Pricing Plans',
          style: TextStyle(
            color: Color(0xFFA66D82),
            fontSize: 16,
            fontFamily: 'Domine',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox( height:20),
        const Text(
          'Explore Our Pricing Plans to Get Your Life in Order',
          style: TextStyle(
            color: Color(0xFF695B5B),
            fontSize: 36,
            fontFamily: 'Mochiy Pop One',
            fontWeight: FontWeight.w400,

          ),
        ),
        const SizedBox( height:40),
        const Text(
          'Streamlined Solutions for Seamless Living.',
          style: TextStyle(
            color: Color(0xFF695B5B),
            fontSize: 16,
            fontFamily: 'Domine',
            fontWeight: FontWeight.w700,

          ),
        ),
        const SizedBox( height:40),
        const Center(
          child: Text(
            'Pricing Made Easy',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFA66D82),
              fontSize: 40,
              fontFamily: 'Domine',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 20,),
        const Center(
          child: Text(
            'Choose the perfect plan that suits your needs and budget.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF695B5B),
              fontSize: 16,
              fontFamily: 'Domine',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 20,),
        Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
          Container(
            width:MediaQuery.sizeOf(context).width*0.45,
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: const ShapeDecoration(
              color: Color(0xFFB59C9C),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
            ),
            child: const Center(
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Color(0xFFE7E7E7),
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            width:MediaQuery.sizeOf(context).width*0.45,
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Color(0xFF695B5B),
                ),
              ),
            ),
            child: const Center(
              child: Text(
                'Learn More',
                style: TextStyle(
                  color: Color(0xFF695B5B),
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
              ),
            ),
          )
        ],),
        const SizedBox(height: 40,),
        const Center(
          child: Text(
            'Affordable',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF695B5B),
              fontSize: 16,
              fontFamily: 'Domine',
              fontWeight: FontWeight.w700,

            ),
          ),
        ),
        const SizedBox(height: 40,),
        const Center(
          child: Text(
            'Pricing Options',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFA66D82),
              fontSize: 36,
              fontFamily: 'Mochiy Pop One',
              fontWeight: FontWeight.w400,

            ),
          ),
        ),
        const SizedBox(height: 10,),
        const Center(
          child: Text(
            'Choose the plan that suits your needs',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF695B5B),
              fontSize: 16,
              fontFamily: 'Domine',
              fontWeight: FontWeight.w400,

            ),
          ),
        ),
        const SizedBox(height: 20,),
        Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
          Container(
            width: MediaQuery.sizeOf(context).width*0.35,
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            decoration: const ShapeDecoration(
              color: Color(0xFFB59C9C),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFB59C9C)),
              ),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Monthly',
                  style: TextStyle(
                    color: Color(0xFFE7E7E7),
                    fontSize: 16,
                    fontFamily: 'Domine',
                    fontWeight: FontWeight.w700,

                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width*0.35,
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFB59C9C)),
              ),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Yearly',
                  style: TextStyle(
                    color: Color(0xFF695B5B),
                    fontSize: 16,
                    fontFamily: 'Domine',
                    fontWeight: FontWeight.w400,
                    height: 0.09,
                  ),
                ),
              ],
            ),
          )
        ],),
        const SizedBox(height: 20,),
        Container(
          width: MediaQuery.sizeOf(context).width*0.90,
          height: 333,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFF695B5B)),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 53,
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Starter Package',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF695B5B),
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '"Friendly Nudges to Get You Going"',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF695B5B),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,

                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Container(
                width: double.infinity,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF695B5B),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Freemium',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF695B5B),
                      fontSize: 40,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      height: 0.03,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width:MediaQuery.sizeOf(context).width*0.88,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    decoration: const ShapeDecoration(
                      color: Color(0xFFB59C9C),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Color(0xFF695B5B),
                        ),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Get started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Domine',
                          fontWeight: FontWeight.w700,

                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Container(
                width: double.infinity,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF695B5B),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20,),

        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           SizedBox(
              width: MediaQuery.sizeOf(context).width*0.30,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Starter plan',
                    style: TextStyle(
                      color: Color(0xFFA66D82),
                      fontSize: 18,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w700,

                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Freemium',
                    style: TextStyle(
                      color: Color(0xFFA66D82),
                      fontSize: 16,
                      fontFamily: 'Domine',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Friendly Nudges to Get You Going.',
                    style: TextStyle(
                      color: Color(0xFFA66D82),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,

                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(

                    height: 32,
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                    decoration: const ShapeDecoration(
                      color: Color(0xFF695B5B),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Color(0xFFA66D82),
                        ),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Get started',
                          style: TextStyle(
                            color: Color(0xFFE7E7E7),
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,

                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
           const Spacer(),
           Container(width: 2,height: MediaQuery.sizeOf(context).height*0.35,color: AppColors.primaryBrown,),
            const Spacer(),
           SizedBox(
             width: MediaQuery.sizeOf(context).width*0.30,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Growth Package',
                    style: TextStyle(
                      color: Color(0xFFA66D82),
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,

                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '\$4.99',
                    style: TextStyle(
                      color: Color(0xFFA66D82),
                      fontSize: 24,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,

                    ),
                  ),
                  const Text(
                    'Per month',
                    style: TextStyle(
                      color: Color(0xFFA66D82),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,

                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Next Level Hacks for Serious Progres',
                    style: TextStyle(
                      color: Color(0xFFA66D82),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,

                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: 32,
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                    decoration: const ShapeDecoration(
                      color: Color(0xFF695B5B),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Color(0xFFA66D82),
                        ),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Get started',
                          style: TextStyle(
                            color: Color(0xFFE7E7E7),
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0.09,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(width: 2,height: MediaQuery.sizeOf(context).height*0.35,color: AppColors.primaryBrown,),
            const Spacer(),
           SizedBox(
              width: MediaQuery.sizeOf(context).width*0.30,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Life Time',
                    style: TextStyle(
                      color: Color(0xFFA66D82),
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,

                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '\$29',
                    style: TextStyle(
                      color: Color(0xFFA66D82),
                      fontSize: 24,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,

                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Reality-Defying Features for Unstoppable Achievers',
                    style: TextStyle(
                      color: Color(0xFFA66D82),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,

                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: 32,
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                    decoration: const ShapeDecoration(
                      color: Color(0xFF695B5B),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Color(0xFFA66D82),
                        ),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Get started',
                          style: TextStyle(
                            color: Color(0xFFE7E7E7),
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,

                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        const Divider(thickness: 2,height: 2,color: AppColors.primaryBrown,),
        const SizedBox(height: 50,),

      ],
      ),
    );
  }
}
