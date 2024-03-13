import 'package:flutter/material.dart';
import 'package:get_shit_together/screen/bottom_nav_bar/bottom_nav_app_bar.dart';
import 'package:get_shit_together/themes/app_colors.dart';
import 'package:get_shit_together/themes/app_text_styles.dart';
import 'package:svg_flutter/svg.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {


  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Color(0xffE8E8E8),
      appBar: AppBar(
        elevation: 0,backgroundColor: Color(0xffE8E8E8),
        leading: const Padding(
          padding: EdgeInsets.only(top: 10,left: 10),
          child: Image(image: AssetImage("assets/icon/bottom_nav/Get 1.png"),),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                  _scaffoldKey.currentState!.openDrawer();
                });
              },
              child: SvgPicture.asset("assets/icon/bottom_nav/Vector.svg")),const SizedBox(width: 10,)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
                '"Progress Bars That Don\'t Lie:\n Kanban\'s Honest Guide to Getting Stuff Done"',
                textAlign: TextAlign.center,
                style: AppTextStyles.popOneStyle.copyWith(
                  color: const Color(0xFF695B5B),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Image(
                  height: 100,width: 100,
                  image: AssetImage("assets/image/home/15 1.png")),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: DataTable(
                      columnSpacing: 0,

                      horizontalMargin: 5,
                      showBottomBorder: true,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: AppColors.primaryBrown,width: 2)
                      ) ,
                      border:  TableBorder(
                          borderRadius: BorderRadius.circular(20),
                          verticalInside: BorderSide.none,
                          horizontalInside: BorderSide.none
                      ),
                      columns: [
                        DataColumn(
                          label:
                          Text(
                            'To Do',
                              style: AppTextStyles.domineStyle.copyWith(     color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,)
                          ),
                        ),


                      ],
                      rows:[
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),

                      ]
                  ),
                ),
                Expanded(
                  child: DataTable(
                    columnSpacing: 0,

                      horizontalMargin: 5,
                      showBottomBorder: true,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: AppColors.primaryBrown,width: 2)
                      ) ,
                      border:  TableBorder(
                          borderRadius: BorderRadius.circular(20),
                          verticalInside: BorderSide.none,
                          horizontalInside: BorderSide.none
                      ),
                      columns: [
                        DataColumn(
                          label:
                          Text(
                            'In Progress ',
                            style: AppTextStyles.domineStyle.copyWith(     color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,)
                          ),
                        ),


                      ],
                      rows:[
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),

                      ]
                  ),
                ),
                Expanded(
                  child: DataTable(
                    horizontalMargin: 5,
                      columnSpacing: 0,
                      showBottomBorder: true,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: AppColors.primaryBrown,width: 2)
                      ) ,
                      border:  TableBorder(
                          borderRadius: BorderRadius.circular(20),
                          verticalInside: BorderSide.none,
                          horizontalInside: BorderSide.none
                      ),
                      columns: [
                        DataColumn(
                          label:
                          Text(
                            'Done',
                              style: AppTextStyles.domineStyle.copyWith(     color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,)
                          ),
                        ),


                      ],
                      rows:[
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffE8E8E8)),
                            cells: [
                              const DataCell(Text("")),


                            ]),
                        DataRow(
                            color:MaterialStateColor.resolveWith((states) => const Color(0xffffff)),
                            cells: [
                              const DataCell(Text("")),
                            ]),

                      ]
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),

            Center(
              child: Container(
                width: MediaQuery.sizeOf(context).width*0.45,
               padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: ShapeDecoration(
                  color: const Color(0xFFA66D82),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Next Slide Please',
                    style: AppTextStyles.domineStyle.copyWith(    color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,)
                  ),
                )
              ),
            ),
            const SizedBox(height: 30,),


          ],
        ),
      ),
    );
  }
}


