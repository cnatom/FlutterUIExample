import 'package:flutter/material.dart';

void main() {
  // runApp：App的入口
  runApp(const MyApp());
}

// StatelessWidget：静态的Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // build：描述了这个界面长什么样子
  @override
  Widget build(BuildContext context) {
    // MaterialApp：App的配置类
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      // Scaffold：单个界面的框架
      home: Scaffold(
        // AppBar：App的顶栏
        appBar: AppBar(
          title: Text("Welcome to Flutter"),
        ),
        // body：App的主体部分
        body: Column(
          children: [
            buildBorderContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  buildBlock(),
                  buildBlock(color: Colors.blue)
                ],
              )
            ),
            buildBorderContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  buildBlock(),
                  buildBlock(color: Colors.blue)
                ],
              )
            )
          ],
        ),
      ),
    );
  }

  Container buildBorderContainer({Widget? child}) {
    return Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 5)),
            child: child,
          );
  }

  Widget buildBlock({Color color = Colors.red}) {
    return Container(
      height: 80,
      width: 80,
      color: color,
    );
  }
}
