import 'package:flutter/cupertino.dart';
import 'package:flutter_example_1/models/Account.dart';
import 'account.dart';

class AccountsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('My Accounts')
      ),
      child: AccountsList()
    );
  }
}

class AccountItem extends StatelessWidget {
  final int _id;
  final String _title;

  AccountItem(this._id, this._title);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _open(context);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(_title)
            ),
            Icon(CupertinoIcons.right_chevron)
          ],
        )
      )
    );
  }

  _open(context) {
    Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (context) {
          return AccountPage(account: this);
        }
      )
    );
  }

  String getTitle() {
    return _title;
  }
}

class AccountsList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AccountsListState();
  }
}

class AccountsListState extends State<AccountsList> {
  final _items = Account.loadItems();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: _itemBuilder
    );
  }

  Widget _itemBuilder(context, index) {
    var account = _items[index];

    return AccountItem(
      account.id,
      account.title
    );
  }
}