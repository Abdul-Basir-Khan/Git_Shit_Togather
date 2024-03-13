import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_styles.dart';
import 'create_new_task.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(height: 10,),
          const Image(
              height: 100,width: 100,fit: BoxFit.cover,
              image: AssetImage("assets/image/home/24 1.png")),
          const SizedBox(height: 10,),
          Center(
            child: Text(
              'Welcome back, Snoozer',
              style: AppTextStyles.popOneStyle.copyWith(  color: const Color(0xFF695B5B),
                fontSize: 15,)
            ),
          ),
          Center(
            child: Text(
              'Here’s Your Task Overview',
              style:AppTextStyles.domineStyle.copyWith(color: const Color(0xFFA66D82),
                fontSize: 12,)
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'To do (4)',
                style: AppTextStyles.domineStyle.copyWith( color: const Color(0x7F1C1D22),
                  fontSize: 14,)
              ),
              const Spacer(),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const CreateNewTask()));

                },
                child: Text(
                    'Add new task',
                    style:

                    AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
                      fontSize: 14,)

                ),
              )
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            width: double.infinity,padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFFF5F5F5),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2, color: Color(0x0F1C1D22)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment:   CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Task Title',
                      style: AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
                        fontSize: 16,)
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color:AppColors.primaryGray.withOpacity(0.10))),
                      child: const Icon(Icons.more_horiz,color: AppColors.primaryBlack,),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Text(
                  'Dribbble marketing',
                  style: AppTextStyles.domineStyle.copyWith( color: const Color(0x7F1C1D22),
                    fontSize: 14,)
                ),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width*0.45,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFA66D82),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '24 Aug 2022',
                          style:AppTextStyles.domineStyle.copyWith(  color: const Color(0xFFF5F5F5),
                            fontSize: 14,)
                        ),
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset("assets/icon/drawer/Icon.svg")
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  'In Progress (4)',
                  style: AppTextStyles.domineStyle.copyWith( color: const Color(0x7F1C1D22),
                    fontSize: 14,)
              ),
              const Spacer(),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const CreateNewTask()));

                },
                child: Text(
                    'Add new task',
                    style:

                    AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
                      fontSize: 14,)

                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            width: double.infinity,padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFFF5F5F5),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2, color: Color(0x0F1C1D22)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment:   CrossAxisAlignment.center,
                  children: [
                    Text(
                        'Design system update',
                        style: AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
                          fontSize: 16,)
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color:AppColors.primaryGray.withOpacity(0.10))),
                      child: const Icon(Icons.more_horiz,color: AppColors.primaryBlack,),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Text(
                    'Oreo website project',
                    style: AppTextStyles.domineStyle.copyWith( color: const Color(0x7F1C1D22),
                      fontSize: 14,)
                ),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width*0.45,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFA66D82),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Center(
                        child: Text(
                            '24 Aug 2022',
                            style:AppTextStyles.domineStyle.copyWith(  color: const Color(0xFFF5F5F5),
                              fontSize: 14,)
                        ),
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset("assets/icon/drawer/Icon.svg")
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  'Done (4)',
                  style: AppTextStyles.domineStyle.copyWith( color: const Color(0x7F1C1D22),
                    fontSize: 14,)
              ),
              const Spacer(),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const CreateNewTask()));

                },
                child: Text(
                    'Add new task',
                    style:

                    AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
                      fontSize: 14,)

                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            width: double.infinity,padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFFF5F5F5),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2, color: Color(0x0F1C1D22)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment:   CrossAxisAlignment.center,
                  children: [
                    Text(
                        'Design system update',
                        style: AppTextStyles.domineStyle.copyWith( color: const Color(0xFF695B5B),
                          fontSize: 16,)
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color:AppColors.primaryGray.withOpacity(0.10))),
                      child: const Icon(Icons.more_horiz,color: AppColors.primaryBlack,),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Text(
                    'Oreo website project',
                    style: AppTextStyles.domineStyle.copyWith( color: const Color(0x7F1C1D22),
                      fontSize: 14,)
                ),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width*0.45,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFA66D82),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Center(
                        child: Text(
                            '24 Aug 2022',
                            style:AppTextStyles.domineStyle.copyWith(  color: const Color(0xFFF5F5F5),
                              fontSize: 14,)
                        ),
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset("assets/icon/drawer/Icon.svg")
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
