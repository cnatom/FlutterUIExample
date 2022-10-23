import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyselfPage extends StatelessWidget {
  const MyselfPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F4FC),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            16, MediaQuery.of(context).padding.top + 40, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 顶部个人资料区
            buildPersonInfo(),
            SizedBox(
              height: 40,
            ),
            // 校园卡 宿舍电量
            buildCardArea(),
            // 校园卡登录等垂直列表
            buildListContainer(children: [
              buildRowButton("校园网登录", Icons.login),
              buildRowButton("个性化", Icons.accessibility_new_sharp),
            ]),
            buildListContainer(children: [
              buildRowButton("关于我们", Icons.person),
              buildRowButton("反馈与建议", Icons.message),
              buildRowButton("分享App", Icons.share),
            ]),
            buildListContainer(children: [
              buildRowButton("退出登录", Icons.logout),
            ]),
          ],
        ),
      ),
    );
  }

  Row buildCardArea() {
    return Row(
      children: [
        // 校园卡卡片
        Expanded(
          child: buildCard(
              iconData: Icons.monetization_on_outlined,
              title: "校园卡",
              subTitle: "余额:100.00元"),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: buildCard(
              iconData: Icons.power_outlined,
              title: "宿舍电量",
              subTitle: "点击绑定宿舍"),
        ),
      ],
    );
  }

  Padding buildPersonInfo() {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "晚上好，牟金腾",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "星光不负赶路人，时光不负有心人",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Container buildListContainer({required List<Widget> children}) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: children,
      ),
    );
  }

  Widget buildRowButton(String title, IconData iconData) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 20,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Icon(
            Icons.chevron_right,
            size: 20,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget buildCard(
      {required IconData iconData, String? title, String? subTitle}) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Icon(iconData),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? "",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                subTitle ?? "",
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
