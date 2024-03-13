import 'package:flutter/material.dart';
import 'package:get_shit_together/themes/app_text_styles.dart';
import 'package:svg_flutter/svg.dart';

import '../../../themes/app_colors.dart';
import '../bottom_nav_app_bar.dart';

class ToDoPaymentScreen extends StatefulWidget {
  const ToDoPaymentScreen({super.key});

  @override
  State<ToDoPaymentScreen> createState() => _ToDoPaymentScreenState();
}

class _ToDoPaymentScreenState extends State<ToDoPaymentScreen> {
  String? value;
  String? card;
  bool _isAddNewCard=false;
  final List cardData = [
    'assets/image/home/Frame 12.png',
    'assets/image/home/Frame 11.png',
    'assets/image/home/Frame 13.png',
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,drawer: const CustomDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                  _scaffoldKey.currentState!.openDrawer();
                });
              },
              child: SvgPicture.asset(
                  height: 25,width: 25,
                  "assets/icon/bottom_nav/Vector.svg")),const SizedBox(width: 10,)
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.primaryBlack,
            )),
        title: const Text(
          'Payment',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.primaryBlack,
            fontSize: 23,
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Life Time Package',
                        style: AppTextStyles.domineStyle.copyWith(  color: const Color(0xFF695B5B),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,)
                      ),
                      const Spacer(),
                      RadioMenuButton(
                          value: 'Life Time',
                          groupValue: value,
                          onChanged: (String? newValue) {
                            setState(() {
                              value = newValue;
                            });
                          },
                          child: const Text('')),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
            Text(
                    'Change',
                    style:  AppTextStyles.domineStyle.copyWith(  color: const Color(0xFFA66D82),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,)
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     Text(
                        'Saved Cards',
                        style: AppTextStyles.domineStyle.copyWith(   color: const Color(0xFF424347),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,)
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.add,
                        color: AppColors.primaryBrown,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _isAddNewCard=!_isAddNewCard;
                          });
                        },
                        child: Text(
                          'Add New Card',
                          textAlign: TextAlign.right,
                          style: AppTextStyles.domineStyle.copyWith(    color: const Color(0xFFA66D82),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,)
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                              cardData.length,
                              (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Image(
                                      image: AssetImage(
                                          cardData[index].toString()),
                                    ),
                                  )))),
                  const SizedBox(
                    height: 20,
                  ),


            _isAddNewCard==false?Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
              Text(
                'Other Payment Options',
                style: AppTextStyles.domineStyle.copyWith(color: const Color(0xFF424347),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                      'assets/icon/bottom_nav/simple-icons_applepay.svg'),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Apple Pay',
                    style: AppTextStyles.domineStyle.copyWith(color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,),
                  ),
                  const Spacer(),
                  RadioMenuButton(
                      value: 'Apple Pay',
                      groupValue: card,
                      onChanged: (String? newValue) {
                        setState(() {
                          card = newValue;
                        });
                      },
                      child: const Text('')),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icon/bottom_nav/PayPal.svg'),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Apple Pay',
                    style: AppTextStyles.domineStyle.copyWith(color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,),
                  ),
                  const Spacer(),
                  RadioMenuButton(
                      value: 'Pay Pal',
                      groupValue: card,
                      onChanged: (String? newValue) {
                        setState(() {
                          card = newValue;
                        });
                      },
                      child: const Text('')),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                      'assets/icon/bottom_nav/GooglePay.svg'),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Apple Pay',
                    style: AppTextStyles.domineStyle.copyWith(color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,),
                  ),
                  const Spacer(),
                  RadioMenuButton(
                      value: 'Google Pay',
                      groupValue: card,
                      onChanged: (String? newValue) {
                        setState(() {
                          card = newValue;
                        });
                      },
                      child: const Text('')),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      'Total',
                      style: AppTextStyles.domineStyle.copyWith( color: const Color(0xFF424347),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,)
                  ),
                  const Spacer(),
                  Text(
                      '\$29.00',
                      textAlign: TextAlign.right,
                      style: AppTextStyles.domineStyle.copyWith(  color: const Color(0xFF424347),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,)
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),

            ],
            ):Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Other Payment Options',
                      style: AppTextStyles.domineStyle.copyWith(color: const Color(0xFF424347),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,),
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            _isAddNewCard=!_isAddNewCard;
                          });
                        },
                        child: const Icon(Icons.close,color: AppColors.primaryBlack,))
                  ],
                ),
              const SizedBox(height: 10,),
              Text(
                  'Name on card',
                  style:AppTextStyles.domineStyle.copyWith(   color:const Color (0xFF999999),
                    fontSize: 17,
                    fontWeight: FontWeight.w700,)
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 45,
                child: TextField(


                  decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle:
                    AppTextStyles.domineStyle.copyWith( color: const Color(0xFF3E3E3E),
                      fontSize: 13,
                      fontWeight: FontWeight.w700,),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                  'Card Number',
                  style:AppTextStyles.domineStyle.copyWith(   color: const Color(0xFF999999),
                    fontSize: 17,
                    fontWeight: FontWeight.w700,)
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 45,
                child: TextField(


                  decoration: InputDecoration(
                    hintText: 'XXXX XXXX XXXX XXXX',
                    hintStyle:
                    AppTextStyles.domineStyle.copyWith( color:const Color(0xFF3E3E3E),
                      fontSize: 13,
                      fontWeight: FontWeight.w700,),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                crossAxisAlignment:
                CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            'Expiry date',
                            style:AppTextStyles.domineStyle.copyWith(   color: const Color(0xFF999999),
                              fontSize: 17,
                              fontWeight: FontWeight.w700,)
                        ),
                        const SizedBox(height: 10,),
                        SizedBox(
                          height: 45,
                          child: TextField(


                            decoration: InputDecoration(
                              hintText: 'MM/YY',
                              hintStyle:
                              AppTextStyles.domineStyle.copyWith( color: const Color(0xFF3E3E3E),
                                fontSize: 13,
                                fontWeight: FontWeight.w700,),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:  BorderSide.none,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            'CVV',
                            style:AppTextStyles.domineStyle.copyWith(   color: const Color(0xFF999999),
                              fontSize: 17,
                              fontWeight: FontWeight.w700,)
                        ),
                        const SizedBox(height: 10,),
                        SizedBox(
                          height: 45,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'CVV',
                              hintStyle:
                              AppTextStyles.domineStyle.copyWith( color: const Color(0xFF3E3E3E),
                                fontSize: 13,
                                fontWeight: FontWeight.w700,),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:  BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:  BorderSide.none,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
            ],
            ),

                ],
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 126, vertical: 10),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: const Color(0xFFA66D82),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Center(
                child: Text(
                 _isAddNewCard==false? 'Pay Now':'Add',
                  textAlign: TextAlign.center,
                  style:AppTextStyles.domineStyle.copyWith(     color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,)
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
