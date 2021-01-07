import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('パスワード管理'),
      ),
      body: ListView( //複数のウィジェットを表示できるウィジェット・画面からはみ出たらスクロールできる
        children: [
          ListTile( //リストの1項目を表示するためのウィジェット
            leading: Icon(Icons.security), //leading->左端に何を表示するかを決めるプロパティ
            title: Text("Amazon"), //title->項目のタイトルを決めるプロパティ
          ),
          Divider(), //区切り線を表示してくれるウィジェ
          ListTile(
            leading: Icon(Icons.security),
            title: Text("楽天"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.security),
            title: Text("Yahoo!"),
          ),
          Divider(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

//todo ホーム画面のタイトル変更
//todo リスト表示
//todo リスト間に区切り線表示
//todo リスト表示を動的に
//todo フロートアクションボタンをタップしたときに、リストにひとつ追加
//todo 新しい画面を作成し、リストをタップしたときに遷移
//todo 新しい画面のレイアウトを作成
//todo 新しい画面にリストからデータを引き継ぐ