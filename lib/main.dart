import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_qq/kxz_example.dart';

void main() {
  // runApp：App的入口
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


// StatelessWidget：静态的Widget
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // build：描述了这个界面长什么样子
  @override
  Widget build(BuildContext context) {
    // MaterialApp：App的配置类
    return Scaffold(
      // AppBar：App的顶栏
      appBar: AppBar(
        title: Text("Welcome to Flutter"),
      ),
      // body：App的主体部分
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                print("hello");
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>MyselfPage()));
              },
              child: Container(
                color: Colors.blue,
                height: 50,
                width: 50,
                child: const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
            ),
            buildBorderContainer(
                child: Stack(
                  children: [
                    Positioned(top: 10, right: 0, child: buildBlock()),
                    Positioned(
                        left: 0,
                        bottom: 0,
                        child: buildBlock(color: Colors.blue)),
                  ],
                )),
            buildBorderContainer(
                child: Column(
                  children: [
                    Expanded(flex: 1, child: buildBlock()),
                    Expanded(flex: 9, child: buildBlock(color: Colors.blue)),
                  ],
                )),
            buildBorderContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [buildBlock(), buildBlock(color: Colors.blue)],
                )),
            buildBorderContainer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [buildBlock(), buildBlock(color: Colors.blue)],
                ))
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
      decoration:
          BoxDecoration(border: Border.all(color: Colors.blue, width: 5)),
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
