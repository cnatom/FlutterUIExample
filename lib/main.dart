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
        body: Text('Hello World'),
      ),
    );
  }
}
