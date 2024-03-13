import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get_shit_together/themes/app_text_styles.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../themes/app_colors.dart';

class CalenderDialog extends StatefulWidget {

  const CalenderDialog({Key? key,}) : super(key: key);

  @override
  State<CalenderDialog> createState() => _CalenderDialogState();
}

class _CalenderDialogState extends State<CalenderDialog> {
  DateTime today=DateTime.now();
  DateTime tomorrow=DateTime.now().add(const Duration(days: 1));

  @override
  Widget build(BuildContext context) {
    return

      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Dialog(
          backgroundColor:Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '(And try not to miss it)',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.domineStyle.copyWith(     color: const Color(0xFFA66D82),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,)
                ),
                const SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Today',
                      style: AppTextStyles.domineStyle.copyWith(      color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,)
                    ),
                    const Spacer(),
                    Text(
                      "${DateFormat('EEEE').format(today)}",
                      style: AppTextStyles.domineStyle.copyWith(      color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,)
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        'Tomorrow',
                        style: AppTextStyles.domineStyle.copyWith(      color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,)
                    ),
                    const Spacer(),
                    Text(
                        "${DateFormat('EEEE').format(tomorrow)}",
                        style: AppTextStyles.domineStyle.copyWith(      color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,)
                    ),
                  ],
                ),
                const SizedBox(height: 40,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryBlack)
                ),
                child: SfCalendar(
                             headerDateFormat: 'MMMM',
                  headerStyle: const CalendarHeaderStyle(
                    textAlign: TextAlign.center
                  ),
                view: CalendarView.month,
                ),
              ),

              ],
            ),
          ),
        ),
      );
  }
}