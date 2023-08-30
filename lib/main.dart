import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ui/pages/main_page.dart';

void main() {
  Get.lazyPut<Convertercontroller>(() => Convertercontroller());
  runApp(const MyApp());
}

class Convertercontroller extends GetxController {
  var valor = 0.obs;
  int get val => valor.value;

  sum() => valor++;
  dec() => valor--;
  reset() => valor.value = 0;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'GetX Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('GetX Demo'),
          ),
          body: const MainPage(),
        ));
  }
}

Convertercontroller controller = Get.put(Convertercontroller());
