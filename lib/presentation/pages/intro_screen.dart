part of 'pages.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  late int currentIndex = 0;
  late PageController pageController;

  List<Slide> slides = [
    Slide(
      title: 'Your Tasks',
      description:
          'I always reminds you about your planned activities. which is always my priority and your importance.',
      pathImage: 'assets/intro_task.png',
    ),
    Slide(
      title: 'Capture Your Memories',
      description:
          "We know that catching photos are necessary in your trip. that's why we have built-in camera and gallery feature.",
      pathImage: 'assets/intro_camera.png',
    ),
    Slide(
      title: 'Track Your Fitness',
      description:
          'Fitness is one of the main thing which is really important to your body and we track it in every second.',
      pathImage: 'assets/intro_progress.png',
    ),
    Slide(
      title: 'There Is Much More',
      description:
          'We have bunch of other cool features, which is super helpful for your next camping trip, so what are you waiting for? ',
      pathImage: 'assets/intro_camp.png',
    ),
  ];
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: ((value) {
          setState(() {
            currentIndex = value;
          });
        }),
        controller: pageController,
        children: slides.map((slide) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                slide.pathImage,
                height: 228,
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Text(
                  slide.title,
                  style: blackTextFont.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Text(
                  slide.description,
                  style: blackTextFont.copyWith(
                    color: const Color(0xFF3F3F46),
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        }).toList(),
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  (currentIndex != 0)
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex--;
                              pageController.animateToPage(currentIndex,
                                  duration: const Duration(milliseconds: 800),
                                  curve: Curves.ease);
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: accentColor2,
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              color: Color(0xFF365314),
                            ),
                          ),
                        )
                      : const SizedBox(
                          width: 40,
                        ),
                  Row(
                    children: [
                      (currentIndex == 0)
                          ? currentIndicator()
                          : defaultIndicator(true),
                      const SizedBox(
                        width: 16,
                      ),
                      (currentIndex == 1)
                          ? currentIndicator()
                          : defaultIndicator(currentIndex > 0),
                      const SizedBox(
                        width: 16,
                      ),
                      (currentIndex == 2)
                          ? currentIndicator()
                          : defaultIndicator(currentIndex > 1),
                      const SizedBox(
                        width: 16,
                      ),
                      (currentIndex == 3)
                          ? currentIndicator()
                          : defaultIndicator(currentIndex > 2),
                    ],
                  ),
                  (currentIndex != slides.length - 1)
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex++;
                              pageController.animateToPage(currentIndex,
                                  duration: const Duration(milliseconds: 800),
                                  curve: Curves.ease);
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xFF365314),
                            ),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: accentColor2,
                            ),
                          ),
                        )
                      : const SizedBox(
                          width: 40,
                        ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                height: 44,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: mainColor,
                      elevation: 4,
                      shadowColor: const Color(0xFFD9F99D),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: Text(
                    "Log in",
                    style: whiteTextFont.copyWith(
                      fontWeight: bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account? ",
                    style: blackTextFont.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Register",
                        style: blackTextFont.copyWith(
                          fontWeight: bold,
                          fontSize: 16,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget defaultIndicator(bool isPass) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 3),
        color: isPass ? const Color(0xFFD9F99D) : const Color(0xFFF4F4F5),
      ),
    );
  }

  Widget currentIndicator() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: mainColor, width: 1),
        color: whiteColor,
      ),
      child: Center(
        child: FractionallySizedBox(
          heightFactor: 0.6,
          widthFactor: 0.6,
          child: Container(
            decoration: const BoxDecoration(
              color: mainColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
