import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const _WidgetTestApp());
}

class _WidgetTestApp extends StatelessWidget {
  const _WidgetTestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Our Widget Tester",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 255, 170, 11)),
          ),
          leading: someAction(),
          actions: [someAction(), someAction()],
        ),
        body: Container(
          color: Colors.red,
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return urlImage(
                    "https://images3.alphacoders.com/100/1000030.jpg");
              }),
        ),
      ),
    );
  }

  Widget someAction() {
    return IconButton(
      icon: const Icon(Icons.abc),
      color: const Color.fromARGB(255, 255, 170, 11),
      onPressed: () {},
    );
  }

  Widget urlImage(String source) {
    return Image.network(source, width: 200, height: 300);
  }
}
