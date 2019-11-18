import 'package:flutter/cupertino.dart';
import 'package:flutter_example_1/pages/accounts.dart';
import 'package:intl/intl.dart';

class AccountTransaction extends StatelessWidget {
  final int id;
  final String operation;
  final double sum;
 
  AccountTransaction(this.id, this.operation, this.sum);

  @override
  Widget build(BuildContext context) {
    var numFormat = NumberFormat.currency(locale: 'en_CA', symbol: '\$');

    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(operation)
          ),
          Text(numFormat.format(sum))
        ],
      )
    );
  }
}

class AccountPage extends StatefulWidget {
  final AccountItem account;
  const AccountPage({Key key, this.account}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AccountPageState();
  }
}

class AccountPageState extends State<AccountPage> {
  final _transactions = <AccountTransaction>[
    AccountTransaction(1, 'debit', 24440.0),
    AccountTransaction(1, 'credit', 431.05),
    AccountTransaction(1, 'credit', 914.12),
    AccountTransaction(1, 'credit', 554.42),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: _buildTitle()
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text('aa')
              ),
              Text('aa')
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _transactions.length,
              itemBuilder: (context, i) {
                return _transactions[i];
              }
            )
          )
        ],
      )
    );
  }

  Text _buildTitle() {
    var title = widget.account.getTitle();

    return Text('Account ${title}');
  }
}