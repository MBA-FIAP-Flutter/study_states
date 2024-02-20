import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_states/counter_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: _MyHome(),
    );
  }
}

class _MyHome extends StatelessWidget {
  const _MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterModel counterModel = Get.put(CounterModel());

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() => Text(
                  '${counterModel.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterModel.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
