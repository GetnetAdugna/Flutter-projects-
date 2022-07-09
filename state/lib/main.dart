import 'package:flutter/material.dart';
import './provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Controller(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const MyHomePage(title: 'State'),
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
  Widget space = SizedBox(
    width: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          color: Colors.brown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<Controller>(
                builder: (context, controller, child) {
                  return FloatingActionButton(
                    onPressed: () {
                      controller.incrementCounter();
                    },
                    child: Text("+"),
                  );
                },
              ),
              space,
              Consumer<Controller>(builder: ((context, controller, child) {
                return Text("${controller.counter}");
              })),
              space,
              Consumer<Controller>(
                builder: ((context, controller, child) {
                  return FloatingActionButton(
                    onPressed: () {
                      controller.decrementCounter();
                    },
                    child: Text("-"),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
