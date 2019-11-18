import 'package:flutter/material.dart';

class AccountsPage extends StatefulWidget {
  @override
  AccountsPageState createState() => AccountsPageState();
}

class AccountsPageState extends State<AccountsPage> {
  final _items = <String>[
    'hell world',
    'bla',
    'item2'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _buildBody()
    );
  }

  Widget _buildBody() {
    return ListView.builder(
      itemCount: _items.length,
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, index) {
        return _buildRow(_items[index], index);
      },
    );
  }

  Widget _buildRow(String str, int index) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(str)
            )
          ]
        ),
        Divider()
      ]
    );
  }
}