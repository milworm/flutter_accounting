import 'package:flutter/cupertino.dart';
import 'pages/accounts.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Bigging App',
      home: AccountsPage()
    );
  }
}
//
//class RandomWordsState extends State<RandomWords> {
//  final _suggestions = <WordPair>[];
//  final _biggerFont = const TextStyle(fontSize: 18.0);
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Startup Name Generator')
//      ),
//      body: _buildSuggestions()
//    );
//  }
//
//  Widget _buildSuggestions() {
//    return ListView.builder(
//      padding: const EdgeInsets.all(16.0),
//      itemBuilder: (context, i) {
//        if (i.isOdd) return Divider();
//
//        final index = i ~/ 2;
//
//        if (index >= _suggestions.length) {
//          _suggestions.addAll(generateWordPairs().take(10));
//        }
//
//        return _buildRow(_suggestions[index]);
//      },
//    );
//  }
//
//  Widget _buildRow(WordPair pair) {
//    return ListTile(
//      title: Row(
//        children: <Widget>[
//          Expanded(
//              child: Text(pair.asPascalCase, style: _biggerFont)
//          ),
//          IconButton(
//            icon: Icon(Icons.menu),
//            tooltip: 'Example icon',
//            onPressed: _onNameClick,
//          )
//        ],
//      )
//    );
//  }
//
//  void _onNameClick() {
//    Route route = MaterialPageRoute(builder: (context) => StartupPage());
//
//    Navigator.push(context, route);
//  }
//}
//
//class StartupPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Startup name')
//      ),
//      body: new Center(
//        child: RaisedButton(
//          onPressed: () {
//            Navigator.pop(context);
//          },
//          child: Text('Go back!')
//        )
//      )
//    );
//  }
//}
//
//class RandomWords extends StatefulWidget {
//  @override
//  RandomWordsState createState() => RandomWordsState();
//}
