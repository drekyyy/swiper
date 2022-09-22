import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:simple_swiper_pgl/logic/cubit/page_cubit.dart';
import 'package:simple_swiper_pgl/presentation/first_screen.dart';
import 'package:simple_swiper_pgl/presentation/second_screen.dart';
import 'package:simple_swiper_pgl/presentation/third_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  HydratedBlocOverrides.runZoned(() => runApp(const MyApp()), storage: storage);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'swiper app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final List<StatelessWidget> pageList = [
    const FirstScreen(title: "Ekran 1"),
    const SecondScreen(title: "Ekran 2"),
    const ThirdScreen(title: "Ekran 3")
  ];

  @override
  Widget build(BuildContext context) {
    final controller =
        PageController(initialPage: context.read<PageCubit>().state.page);

    return PageView.builder(
        onPageChanged: (int page) {
          context.read<PageCubit>().changePage(page);
        },
        controller: controller,
        itemBuilder: (context, index) {
          return pageList[index % pageList.length];
        });
  }
}
