part of 'pages.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageBloc, PageState>(
        builder: (context, pageState) => (pageState is OnIntroScreen)
            ? const IntroScreen()
            : const SplashScreen());
  }
}
