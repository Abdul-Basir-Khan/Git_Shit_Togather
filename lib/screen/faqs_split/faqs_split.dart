import 'package:flutter/material.dart';


class FaqsSplit extends StatelessWidget {
  const FaqsSplit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8E8E8),
      body: Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top,left: 10,right: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
                image: AssetImage(
                    "assets/image/landing_screen/Placeholder Image.png")),

            Center(
              child: Text(
                'FAQs\nGo On Spill it',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontFamily: 'Mochiy Pop One',
                  fontWeight: FontWeight.w400,

                ),
              ),
            ),
            Text(
              'Got Questions? We Got Answers!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFA66D82),
                fontSize: 16,
                fontFamily: 'Domine',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10,),
        Text(
            ' What is  Get Your Sh*t together ?\n\n GYST  is an intuitive task management app designed to help you organize and prioritize your tasks, set deadlines, track progress, and ultimately increase your productivity.\n\n\nHow do I get started with GYST?\n    \n Getting started is easy! Simply sign up or log in, and you\'ll be guided through       setting up your account and exploring the app\'s features.\n\n\n3. Can I access GYST on multiple devices?\n\nYes, GYST is available across various devices. You can access your tasks and manage them seamlessly whether you\'re on your computer, tablet, or smartphone.\n\n\nHow can I add tasks in GYST?\n  \nAdding tasks is a breeze! Navigate to the \'Task Entry\' section, click on the \'Add New   Task\' button, and fill in the task details such as title, deadline, and any necessary notes.\n\n\nCan I set deadlines for my tasks?\n\n  Absolutely! GYST allows you to set deadlines for your tasks. Head over to the \'Deadline\' section,   select the task, and set the desired deadline.\n\n\n Is it possible to prioritize tasks in GYST?\n\nYes, indeed! Task prioritization is key. In the \'Task Prioritization\' section, simply drag and drop tasks to rearrange them based on their importance.\n\n\nHow do I track my progress on tasks?\n  \n  Tracking progress is simple. In the \'Progress Tracking\' section, you can mark tasks as completed, observe progress      bars, and see how close you are to finishing your tasks.\n\n\n Can I share GYST with others?\n \nAbsolutely! Spread the productivity joy by sharing GYST with your friends, family, or colleagues. In the \'Share & Invite\' section, you can invite others to join the productivity party!\n\n\nCan I control or disable the humor or sarcastic pop-ups?\n \nYes, absolutely! We understand that everyone has their preferences when it comes to humor. In GYST, we strive to add a touch of light-heartedness, but your comfort matters most. You can adjust the settings to tone down or disable the humor elements entirely, ensuring your experience aligns with your preferences and comfort level.',
        style: TextStyle(
        color: Color(0xFF695B5B),
        fontSize: 16,
        fontFamily: 'Domine',
        fontWeight: FontWeight.w700,

            ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Text(
                'Still have questions?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFA66D82),
                  fontSize: 24,
                  fontFamily: 'Domine',
                  fontWeight: FontWeight.w700,

                ),
              ),
            ),

            SizedBox(height: 20,),
            Center(
              child: Text(
                'Feel free to reach out to us for more information.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF695B5B),
                  fontSize: 16,
                  fontFamily: 'Domine',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: MediaQuery.sizeOf(context).width*0.85,
                height: 54,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: ShapeDecoration(
                  color: Color(0xFFA66D82),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Now Back To Your Work',
                      style: TextStyle(
                        color: Color(0xFFE7E7E7),
                        fontSize: 20,
                        fontFamily: 'Domine',
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    ),);
  }
}
