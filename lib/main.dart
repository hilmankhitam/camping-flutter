import 'package:camping/common/styles.dart';
import 'package:camping/presentation/bloc/page_bloc.dart';
import 'package:camping/presentation/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => PageBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Camping",
        theme: ThemeData(
          scaffoldBackgroundColor: whiteColor,
        ),
        home: const Wrapper(),
      ),
    );
  }
}
