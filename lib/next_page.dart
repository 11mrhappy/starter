import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  final String title;
  NextPage(this.title); //送られてきた値をtitleに渡す

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  child: Text('ID'),
                ),
                Container(
                  width: 20,
                  child: Text(':'),
                ),
                Text('毎回同じテキストを表示ID'),
              ],
            ),
            Padding(padding: EdgeInsets.all(5.0),), // 上下5,左右0のpaddingを作る
            Row(
              children: [
                Container(
                  width: 50,
                  child: Text('PW'),
                ),
                Container(
                  width: 20,
                  child: Text(':'),
                ),
                Text('毎回同じテキストを表示PW'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// stf と打つとstfulという予測変換からStatefulWidgetを簡単に作成できる
// class名をつけたら抜けてる所に入力するのを忘れないように