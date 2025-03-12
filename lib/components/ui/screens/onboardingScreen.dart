import 'package:flutter/material.dart';
import 'package:hotel_booking/components/ui/screens/SignInScreen.dart';
import 'package:hotel_booking/components/ui/utility/app_color.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  late PageController _pageController;
  bool _isSkipPressed = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (!_isSkipPressed) {
      if (currentPage < demoData.length - 1) {
        setState(() {
          currentPage++;
        });
        _pageController.animateToPage(
          currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        _navigateToLoginScreen();
      }
    }
  }

  void _navigateToLoginScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
    );
  }

  void _skipToLoginScreen() {
    setState(() {
      _isSkipPressed = true;
    });
    _navigateToLoginScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                //const Spacer(),
                Expanded(
                  flex: 3,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: demoData.length,
                    onPageChanged: (value) {
                      if (!_isSkipPressed) {
                        setState(() {
                          currentPage = value;
                        });
                      }
                    },
                    itemBuilder:
                        (context, index) => OnboardContent(
                          illustration: demoData[index]["illustration"],
                          title: demoData[index]["title"],
                          text: demoData[index]["text"],
                        ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          // Skip Button
          Positioned(
            top: 36,
            right: 16,
            child: TextButton(
              onPressed: _skipToLoginScreen,
              child: const Text(
                "Skip",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          // Dot Indicator and Floating Action Button at the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 36.0, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: List.generate(
                      demoData.length,
                      (index) => DotIndicator(isActive: index == currentPage),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: _nextPage,
                    backgroundColor: const Color.fromARGB(255, 23, 105, 246),
                    child: const Icon(Icons.arrow_forward, color: Colors.white),
                    shape: const CircleBorder(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.illustration,
    required this.title,
    required this.text,
  });

  final String? illustration, title, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),
        SizedBox(
          height: 350, // Adjust this height as needed
          child: Image.network(illustration!, fit: BoxFit.contain),
        ),
        const SizedBox(height: 16),
        Text(
          title!,
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          text!,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
    this.activeColor = AppColors.primaryColor,
    this.inActiveColor = const Color(0xFF868686),
  });

  final bool isActive;
  final Color activeColor, inActiveColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: isActive ? 4 : 4,
      decoration: BoxDecoration(
        color: isActive ? activeColor : inActiveColor.withOpacity(0.25),
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}

// Demo data for our Onboarding screen
List<Map<String, dynamic>> demoData = [
  {
    "illustration": "https://i.postimg.cc/L43CKddq/Illustrations.png",
    "title": "Track Your Package",
    "text":
        "Easily track your packages in real-time, so you\nalways know where your delivery is.",
  },
  {
    "illustration": "https://i.postimg.cc/xTjs9sY6/Illustrations-1.png",
    "title": "Free delivery offers",
    "text":
        "Free delivery for new customers via Apple Pay\nand other payment methods.",
  },
  {
    "illustration": "https://i.postimg.cc/6qcYdZVV/Illustrations-2.png",
    "title": "Choose your food",
    "text":
        "Easily find your type of food craving and\nyou’ll get delivery in a wide range.",
  },
];
