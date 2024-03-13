
import 'package:flutter/material.dart';
import 'package:get_shit_together/screen/bottom_nav_bar/bottom_nav_app_bar.dart';
import 'package:get_shit_together/screen/bottom_nav_bar/payment_screen/to_do_payment_screen.dart';
import 'package:get_shit_together/themes/app_text_styles.dart';
import 'package:svg_flutter/svg.dart';

import '../../../themes/app_colors.dart';


class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffE8E8E8),
      appBar: AppBar(
        elevation: 0,backgroundColor: const Color(0xffE8E8E8),
        leading: const Padding(
          padding: EdgeInsets.only(top: 10,left: 10),
          child: Image(

            image: AssetImage("assets/icon/bottom_nav/Get 1.png"),),
        ),
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
      ),

      body: Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Expanded(
           child: ListView(


             children: [
               const SizedBox(height: 15,),

               Text(
                 'Add Payment',
                 style:AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
                   fontSize: 23,
                   fontWeight: FontWeight.w700,)
               ),
                const SizedBox(height: 15,),
                const Row(
                  children: [
                  Image(
                      height: 20,
                      image: AssetImage("assets/image/home/MasterCard_Logo 1.png")),
                  SizedBox(width: 20,),
                  Image(
                      height: 20,
                      image: AssetImage("assets/image/home/Visa_Logo 1.png")),
                  ],
                ),
                const SizedBox(height: 20,),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   const Image(
                       height: 25,width: 25,
                       image: AssetImage("assets/image/home/ri_qr-scan-2-line.png")),
                   const SizedBox(width: 20,),
                   Text(
                     'Scan Card',
                     style:AppTextStyles.domineStyle.copyWith(   color: const Color(0xFFA66D82),
                       fontSize: 14,
                       fontWeight: FontWeight.w700,)
                   )
                 ],
               ),
                const SizedBox(height: 30,),

               Text(
                 'Name on card',
                 style:AppTextStyles.domineStyle.copyWith(   color: const Color(0xFF454545),
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
                     AppTextStyles.domineStyle.copyWith( color: const Color(0xFFA66D82),
                       fontSize: 13,
                       fontWeight: FontWeight.w700,),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(color: AppColors.primaryBlack)),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: const BorderSide(color: AppColors.primaryBlack),
                     ),
                   ),
                 ),
               ),
            const SizedBox(height: 10,),
           Text(
                  'card Number',
                    style:AppTextStyles.domineStyle.copyWith(   color: const Color(0xFF454545),
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
                     AppTextStyles.domineStyle.copyWith( color: const Color(0xFFA66D82),
                       fontSize: 13,
                       fontWeight: FontWeight.w700,),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(color: AppColors.primaryBlack)),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: const BorderSide(color: AppColors.primaryBlack),
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
                    style:AppTextStyles.domineStyle.copyWith(   color: const Color(0xFF454545),
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
                      AppTextStyles.domineStyle.copyWith( color: const Color(0xFFA66D82),
                        fontSize: 13,
                        fontWeight: FontWeight.w700,),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: AppColors.primaryBlack)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: AppColors.primaryBlack),
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
                  'Security code',
                    style:AppTextStyles.domineStyle.copyWith(   color: const Color(0xFF454545),
                      fontSize: 17,
                      fontWeight: FontWeight.w700,)
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 45,
                  child: TextField(


                    decoration: InputDecoration(
                      hintText: 'CVV',
                      hintStyle:
                      AppTextStyles.domineStyle.copyWith( color: const Color(0xFFA66D82),
                        fontSize: 13,
                        fontWeight: FontWeight.w700,),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: AppColors.primaryBlack)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: AppColors.primaryBlack),
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


             Text(
                  'ZIP/Postal Code',
                    style:AppTextStyles.domineStyle.copyWith(   color: const Color(0xFF454545),
                      fontSize: 17,
                      fontWeight: FontWeight.w700,)
                ),
                const SizedBox(height: 10,),
               SizedBox(
                 height: 45,
                 child: TextField(


                   decoration: InputDecoration(
                     hintText: 'XXXXX',
                     hintStyle:
                     AppTextStyles.domineStyle.copyWith( color: const Color(0xFFA66D82),
                       fontSize: 13,
                       fontWeight: FontWeight.w700,),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(color: AppColors.primaryBlack)),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: const BorderSide(color: AppColors.primaryBlack),
                     ),
                   ),
                 ),
               ),
                const SizedBox(height: 10,),



              ],
            ),
         ),
          GestureDetector(
            onTap: (

            ){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ToDoPaymentScreen()));
            },
            child: Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: const BoxDecoration(
                color:Color(0xffA76D83),

              ),
              child:  Center(
                child:
                Text(
                  'Add',
                  textAlign: TextAlign.center,
                  style:AppTextStyles.domineStyle.copyWith(  color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,)
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),

        ],
      ),

    ),);
  }
}
