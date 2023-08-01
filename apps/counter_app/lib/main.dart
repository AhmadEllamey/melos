import 'package:counter_widgets/counter_widgets.dart';
import 'package:flutter/material.dart';
import 'package:lib_example/lib_example.dart';
import 'package:counter_widgets/src/calculator_service.dart';
import 'package:lib_example/calculator_service.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String value = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero).then((value) async{
      Future<String> xy = CalculatorService().getUrlResponse();
      setState(() async{
        value = xy;
      });
      Future.delayed(const Duration(seconds: 3));
      Future<String> zy = CalculatorServiceLib().getUrlResponse();
      setState(() async{
        value = zy;
      });
      // print(await libDio.get("https://pub.dev/packages/coverage/versions"));
      // print(await counterDio.get("https://pub.dev/packages/coverage/versions"));
    });
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            CounterCard(
              count: _counter,
            ),
            Text(value),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
