import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:svg_flutter/svg.dart';
import '../../themes/app_colors.dart';
import '../../themes/app_text_styles.dart';
import '../../widgets/custom_buttom.dart';
import '../about_us/about_us_screen.dart';
import '../auth_screen/sign_in_screen.dart';
import '../auth_screen/sign_up_screen.dart';
import '../faqs_split/faqs_split.dart';
import '../price_screen/price_screen.dart';
import '../terms_and_condition/terms_and_condition.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final PageController _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  final List iconList = [
    'assets/image/landing_screen/Vector.svg',
    'assets/image/landing_screen/Vector1.svg',
    'assets/image/landing_screen/Vector2.svg',
    'assets/image/landing_screen/Vector3.svg',
    'assets/image/landing_screen/Vector4.svg',
  ];
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  bool _isAbout=false;
  bool _isPrice=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryWhite,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                      image: AssetImage(
                          "assets/image/landing_screen/Placeholder Image.png")),
                  Spacer(),
                  Icon(
                    Icons.menu,
                    color: AppColors.primaryBlack,
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            _isPrice==false?
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Features",
                          style: AppTextStyles.domineStyle.copyWith(
                              color: AppColors.primaryBrown,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                            _isPrice=!_isPrice;
                            });
                          },
                          child: Text(
                            "Pricing",
                            style: AppTextStyles.domineStyle.copyWith(
                                color: AppColors.primaryBrown,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        GestureDetector(

                          onTap: (){
                            setState(() {
                              _isAbout=!_isAbout;
                            });
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "About Us",
                                style: AppTextStyles.domineStyle.copyWith(
                                    color: AppColors.primaryBrown,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: AppColors.primaryBrown,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomButton(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));

                          },
                          title: 'Sign Up',
                          height: 46,
                          backgroundColor: AppColors.primaryWhite,
                          textColor: AppColors.primaryBrown,
                          borderColor: AppColors.primaryLight,
                          width: MediaQuery.sizeOf(context).width * 1,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomButton(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                            },
                            title: 'Login',
                            height: 46,
                            backgroundColor: AppColors.primaryLight,
                            textColor: AppColors.primaryWhite,
                            borderColor: Colors.transparent,
                            width: MediaQuery.sizeOf(context).width * 1),
                        const SizedBox(
                          height: 70,
                        ),

                      ],
                    ),
                  ),

                  // Here landing Screen and about us page calling

              _isAbout==false?
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Column(
                      children: [
                        Center(
                            child: Text(
                              'From swamped to sorted. Get your shit together.',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.popOneStyle.copyWith(
                                  color: AppColors.primaryBrown,
                                  fontSize: 43,
                                  fontWeight: FontWeight.w400),
                            )),
                        Center(
                            child: Text(
                              'Say hello to your new productivity BFF',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.domineStyle.copyWith(
                                  color: AppColors.primaryBrown,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
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
                                width: MediaQuery.sizeOf(context).width * 0.47),
                            const Spacer(),
                            CustomButton(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> TermsAndCondition()));
                              },
                              title: 'Learn More',
                              height: 46,
                              backgroundColor: AppColors.primaryWhite,
                              textColor: AppColors.primaryBlack,
                              borderColor: AppColors.primaryLight,
                              width: MediaQuery.sizeOf(context).width * 0.47,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        const Center(
                            child: Image(
                                image: AssetImage(
                                    "assets/image/landing_screen/Image.png"))),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),


                  Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    color: AppColors.primaryColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Escape the chaos, one task at a time.Don\'t worry, we\'ll hold your hand(for now).',
                          style: AppTextStyles.robotoStyle.copyWith(
                              color: AppColors.primaryWhite,
                              fontSize: 36,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Don\'t worry, we\'ve all been there. Now let\'s ditch the drama and get things done',
                          style: AppTextStyles.domineStyle.copyWith(
                              color: AppColors.primaryBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'About Us',
                          style: AppTextStyles.popOneStyle.copyWith(
                              color: AppColors.primaryBlack,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: AppColors.primaryBlack,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                  'So, you want to know about us? Buckle up, it\'s a wild ride (of mild amusement).',
                                  style: AppTextStyles.domineStyle.copyWith(
                                      color: AppColors.primaryBlack,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: AppColors.primaryBlack,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                  'The team behind Get Your Shit Together: We\'re basically professional naggers with a sense of humor.',
                                  style: AppTextStyles.domineStyle.copyWith(
                                      color: AppColors.primaryBlack,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Our Story',
                          style: AppTextStyles.robotoStyle.copyWith(
                              color: AppColors.primaryBlack,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Our story: From procrastinating pros to productivity champions (not really, but we\'re trying).\nMeet the masterminds behind your newfound (probably temporary) organization.',
                          style: AppTextStyles.domineStyle.copyWith(
                              color: AppColors.primaryBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomButton(
                              onTap: () {},
                              title: 'Sign Up & Get Organized',
                              height: 46,
                              backgroundColor: AppColors.primaryWhite,
                              textColor: AppColors.primaryBrown,
                              borderColor: AppColors.primaryLight,
                              width: MediaQuery.sizeOf(context).width * 0.65,
                            ),
                            const Spacer(),
                            Text(
                              'Learn More',
                              style: AppTextStyles.domineStyle.copyWith(
                                  color: AppColors.primaryBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  const Image(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/landing_screen/think.png")),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      width: MediaQuery.sizeOf(context).width * 0.88,
                      decoration:
                      const BoxDecoration(color: AppColors.primaryBrown),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Visualize Your\nTasks',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.popOneStyle.copyWith(
                                color: AppColors.primaryWhite,
                                fontSize: 36,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Here’s what you get for the low, low price of your dignity.',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.domineStyle.copyWith(
                                color: AppColors.primaryWhite,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                      child: Image(
                          image:
                          AssetImage("assets/image/landing_screen/girl.png"))),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Features',
                          style: AppTextStyles.robotoStyle.copyWith(
                              color: AppColors.primaryLight,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'To-Do Lists that Bite Back',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.popOneStyle.copyWith(
                              color: AppColors.primaryBrown,
                              fontSize: 36,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: AppColors.primaryBlack,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                  'Priority Levels: “Urgent AF”, Do it now or Ill nag you,” “ Meh whenever,” and “Future you’s problem” (because let’s be honest, it always is).',
                                  style: AppTextStyles.domineStyle.copyWith(
                                      color: AppColors.primaryBrown,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: AppColors.primaryBlack,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                  'Progress Tracking: Watch your tasks crawl, sprint or stubbornly refuse to budge, just like your motivation on certain days.',
                                  style: AppTextStyles.domineStyle.copyWith(
                                      color: AppColors.primaryBrown,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: AppColors.primaryBlack,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                  'Due Dates: You betcha! We’ll make sure you know when your procrastination bubble is about to burst.',
                                  style: AppTextStyles.domineStyle.copyWith(
                                      color: AppColors.primaryBrown,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomButton(
                                onTap: () {},
                                title: 'Join for Harmony!',
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
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  const Image(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/landing_screen/Content.png")),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Features',
                          style: AppTextStyles.robotoStyle.copyWith(
                              color: AppColors.primaryLight,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Calendar for the Chronically Challenged',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.popOneStyle.copyWith(
                              color: AppColors.primaryBrown,
                              fontSize: 36,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: AppColors.primaryBlack,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                  'Reminders: We’ll tell you about your dentist appointment, birthday party and that project deadline you conveniently “ forgot about. Because ,you know, adulting.',
                                  style: AppTextStyles.domineStyle.copyWith(
                                      color: AppColors.primaryBrown,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: AppColors.primaryBlack,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                  'Tasks overlays: See your to-dos popping up on your calendar like uninvited guest. ',
                                  style: AppTextStyles.domineStyle.copyWith(
                                      color: AppColors.primaryBrown,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomButton(
                                onTap: () {},
                                title: 'Enroll, Get Sorted!',
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Image(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/landing_screen/4 5.png")),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Features',
                          style: AppTextStyles.robotoStyle.copyWith(
                              color: AppColors.primaryLight,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Kanban Kraziness: Progress Bars That Don’t Lie',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.popOneStyle.copyWith(
                              color: AppColors.primaryBrown,
                              fontSize: 36,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: AppColors.primaryBlack,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                  'Visual Board Magic: Because who needs a crystal ball when you can have a board that tells you what chaos is coming next?',
                                  style: AppTextStyles.domineStyle.copyWith(
                                      color: AppColors.primaryBrown,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: AppColors.primaryBlack,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                  'Task Cards - Where Dreams (and Procrastination) Take Flight Because nothing says adulting like moving cards around and pretending you\'ve got it all figured out.',
                                  style: AppTextStyles.domineStyle.copyWith(
                                      color: AppColors.primaryBrown,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: AppColors.primaryBlack,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                  'Columns: The Stages of Adulting Grief:',
                                  style: AppTextStyles.domineStyle.copyWith(
                                      color: AppColors.primaryBrown,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: AppColors.primaryBlack,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                  'From "To Do" To "Done". because life is a journey fill with slightly accomplished task',
                                  style: AppTextStyles.domineStyle.copyWith(
                                      color: AppColors.primaryBrown,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomButton(
                                onTap: () {},
                                title: 'Enlist For Order!',
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Image(
                      fit: BoxFit.cover,
                      image:
                      AssetImage("assets/image/landing_screen/8 7538145.png")),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Habit Havoc : Mastering Life, One Habit at a Time',
                          style: AppTextStyles.popOneStyle.copyWith(
                              color: AppColors.primaryBrown,
                              fontSize: 36,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Habit Titles That Make You Question Your Life Choices:\n"Morning Victory Ritual: Conquer the Day Before It Conquers You\"\"Water Warrior Challenge: Hydrate or Desiccate!\"\n\"Walking Wonder: Stroll to Your Goals\"\n\nAdd a New Habit... or don\'t, we\'re not your life coach',
                          style: AppTextStyles.domineStyle.copyWith(
                              color: AppColors.primaryBrown,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        CustomButton(
                            onTap: () {},
                            title: 'Now Start Alreadt',
                            height: 46,
                            backgroundColor: AppColors.primaryLight,
                            textColor: AppColors.primaryWhite,
                            borderColor: Colors.black,
                            width: MediaQuery.sizeOf(context).width * 1),
                        const SizedBox(
                          height: 80,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Text(
                                  'Why People Love Us So Much ',
                                  style: AppTextStyles.popOneStyle.copyWith(
                                      color: AppColors.primaryBrown,
                                      fontSize: 36,
                                      fontWeight: FontWeight.w400),
                                )),
                            const Image(
                                image: AssetImage(
                                    "assets/image/landing_screen/Placeholder Image (2).png")),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                            child: Text(
                              'Glowing Reviews from Our Adoring Fans',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.domineStyle.copyWith(
                                  color: AppColors.primaryBrown,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height:
                                    MediaQuery.sizeOf(context).height*0.48,
                                    width: MediaQuery.sizeOf(context).width * 0.90,
                                    child: PageView(
                                      controller: _pageController,
                                      onPageChanged: (int page) {
                                        _currentPageNotifier.value = page;
                                      },
                                      children: <Widget>[
                                        Container(
                                          width: MediaQuery.sizeOf(context).width *
                                              0.60,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 15),
                                          margin: const EdgeInsets.only(right: 10),
                                          decoration: BoxDecoration(
                                              color: AppColors.primaryGray,
                                              border: Border.all(
                                                  color: AppColors.primaryBlack)),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: List.generate(
                                                    4,
                                                        (index) => const Icon(
                                                      Icons.star,
                                                      color: AppColors
                                                          .primaryBlack,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                ' "I used to thrive on chaos, but then I found this app. Now, my chaos has been officially canceled. Thanks for ruining my chaos-loving reputation!" ',
                                                style: AppTextStyles.domineStyle
                                                    .copyWith(
                                                    color:
                                                    AppColors.primaryBlack,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.w400),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Image(
                                                  image: AssetImage(
                                                      "assets/image/landing_screen/Placeholder Image (3).png")),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Name  Chaos Hater 99: ',
                                                style: AppTextStyles.robotoStyle
                                                    .copyWith(
                                                    color:
                                                    AppColors.primaryBlack,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.w600),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Position : Professional Procrastinator',
                                                style: AppTextStyles.robotoStyle
                                                    .copyWith(
                                                    color:
                                                    AppColors.primaryBlack,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.sizeOf(context).width *
                                              0.80,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 15),
                                          margin: const EdgeInsets.only(right: 10),
                                          decoration: BoxDecoration(
                                              color: const Color(0xffDEA54E),
                                              border: Border.all(
                                                  color: AppColors.primaryBlack)),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: List.generate(
                                                    4,
                                                        (index) => const Icon(
                                                      Icons.star,
                                                      color: AppColors
                                                          .primaryBlack,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Who needs perfection when you can have controlled chaos? This app has single-handedly ruined my pursuit of flawless living. I was almost there, but nope!',
                                                style: AppTextStyles.domineStyle
                                                    .copyWith(
                                                    color:
                                                    AppColors.primaryBlack,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.w400),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Image(
                                                  image: AssetImage(
                                                      "assets/image/landing_screen/man1.png")),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Name   Zen Master 543 ',
                                                style: AppTextStyles.robotoStyle
                                                    .copyWith(
                                                    color:
                                                    AppColors.primaryBlack,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.w600),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Position : Recovering Perfectionist ',
                                                style: AppTextStyles.robotoStyle
                                                    .copyWith(
                                                    color:
                                                    AppColors.primaryBlack,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.sizeOf(context).width *
                                              0.80,
                                          margin: const EdgeInsets.only(right: 10),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 15),
                                          decoration: BoxDecoration(
                                              color: const Color(0xff6C85B7),
                                              border: Border.all(
                                                  color: AppColors.primaryBlack)),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: List.generate(
                                                    4,
                                                        (index) => const Icon(
                                                      Icons.star,
                                                      color: AppColors
                                                          .primaryBlack,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'This app made me realize I\'ve been wasting perfectly good procrastination excuses. Now, I\'m forced to confront my laziness. Thanks a lot, Get Your Sh*t Together!',
                                                style: AppTextStyles.domineStyle
                                                    .copyWith(
                                                    color:
                                                    AppColors.primaryBlack,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.w400),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Image(
                                                  image: AssetImage(
                                                      "assets/image/landing_screen/man.png")),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Name    Procrastination King 123',
                                                style: AppTextStyles.robotoStyle
                                                    .copyWith(
                                                    color:
                                                    AppColors.primaryBlack,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.w600),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Position :Master of Excuses ',
                                                style: AppTextStyles.robotoStyle
                                                    .copyWith(
                                                    color:
                                                    AppColors.primaryBlack,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CirclePageIndicator(
                                        dotColor: Colors.grey,
                                        selectedDotColor: AppColors.primaryBrown,
                                        itemCount: 3,
                                        currentPageNotifier: _currentPageNotifier,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: Text(
                            'FAQs',
                            style: AppTextStyles.popOneStyle.copyWith(
                                color: AppColors.primaryBrown,
                                fontSize: 36,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Got burning questions? Check our FAQs. We’ve compiled answers so you can spend less time scratching your head and more time checking off your to-dos..',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.domineStyle.copyWith(
                              color: AppColors.primaryBrown,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.primaryBlack)),
                          child: Text(
                            'Q.  How do I deal with overwhelming tasks?\nA. Break them down, buttercup. It\'s not rocket science.',
                            style: AppTextStyles.domineStyle.copyWith(
                                color: AppColors.primaryBrown,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.primaryBlack)),
                          child: Text(
                            'Q.  How do I stay motivated?\nA. Find your \'why\' and cling to it like a Karen to a coupon.',
                            style: AppTextStyles.domineStyle.copyWith(
                                color: AppColors.primaryBrown,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.primaryBlack)),
                          child: Text(
                            ' Q  What if I fall off track?\nA.  Get back on, duh. Don\'t make me come over there.',
                            style: AppTextStyles.domineStyle.copyWith(
                                color: AppColors.primaryBrown,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Just Kidding! Click here for  the real deal',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.domineStyle.copyWith(
                              color: AppColors.primaryBrown,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: CustomButton(
                              onTap: () {

                                // navigate here
                                Navigator.push(context,MaterialPageRoute(builder: (context)=> FaqsSplit()) );

                              },
                              title: 'FAQs',
                              height: 46,
                              backgroundColor: AppColors.primaryBrown,
                              textColor: AppColors.primaryWhite,
                              borderColor: Colors.black,
                              width: MediaQuery.sizeOf(context).width * 0.30),
                        ),
                        const SizedBox(
                          height: 60,
                        ),

                      ],
                    ),
                  ),
                ],
              )
                  :_isAbout==true?const AboutUsScreen():const SizedBox(),
                  _isAbout==false
                      ?
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1,
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        color: AppColors.primaryBrown,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Logo',
                              style: AppTextStyles.robotoStyle.copyWith(
                                  color: AppColors.primaryWhite,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Address:\nxxxxx',
                              style: AppTextStyles.robotoStyle.copyWith(
                                  color: AppColors.primaryWhite,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Contact:\n1800 123 4567\ninfo@rgyst.com',
                              style: AppTextStyles.robotoStyle.copyWith(
                                  color: AppColors.primaryWhite,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                  iconList.length,
                                      (index) =>
                                      SvgPicture.asset(iconList[index].toString())),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Divider(
                              thickness: 2,
                              height: 2,
                              color: AppColors.primaryWhite,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Terms of Service',
                              style: AppTextStyles.robotoStyle.copyWith(
                                  color: AppColors.primaryWhite,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Cookies Settings',
                              style: AppTextStyles.robotoStyle.copyWith(
                                  color: AppColors.primaryWhite,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              '© 2024 GYST. All rights reserved.',
                              style: AppTextStyles.robotoStyle.copyWith(
                                  color: AppColors.primaryWhite,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                      :const SizedBox()
                ],
              )
                  : PriceScreen( ),

              _isAbout==true||_isAbout==false ||_isPrice==true?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [

                  Text(
                    'Connect',
                    style: AppTextStyles.domineStyle.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Get in Touch',
                    style: AppTextStyles.domineStyle.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 36,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Have a question or need assistance? Contact us.',
                    style: AppTextStyles.robotoStyle.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Icon(
                    Icons.mail_outline_rounded,
                    color: AppColors.primaryLight,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Email',
                    style: AppTextStyles.domineStyle.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 36,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Send us an email and we\'ll get back to you.',
                    style: AppTextStyles.robotoStyle.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'hello@relume.io',
                        style: AppTextStyles.domineStyle.copyWith(
                            color: AppColors.primaryBrown,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Icon(
                    Icons.call_outlined,
                    color: AppColors.primaryLight,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Phone',
                    style: AppTextStyles.domineStyle.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 36,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Give us a call during business hours.',
                    style: AppTextStyles.robotoStyle.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        text: '+1 (555) 000-0000',
                        style: AppTextStyles.domineStyle.copyWith(
                            color: AppColors.primaryBrown,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Icon(
                    Icons.location_on_outlined,
                    color: AppColors.primaryLight,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Office',
                    style: AppTextStyles.domineStyle.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 36,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Visit our office for a face-to-face meeting.',
                    style: AppTextStyles.robotoStyle.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        text: '123 Sample St, Sydney NSW 2000 AU',
                        style: AppTextStyles.domineStyle.copyWith(
                            color: AppColors.primaryBrown,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],),
              )
                  :const SizedBox(),


            ],
          ),
        ),
      ),
    );
  }
}
