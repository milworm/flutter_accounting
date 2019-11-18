import 'dart:convert';

class Account {
  int id;
  String title;
  bool deleted;

  Account({
    this.id,
    this.title,
    this.deleted
  });

  static List<Account> loadItems() {
    Map<String, dynamic> data = json.decode('''
      {
        "items": [
          {
            "deleted": false,
            "id": 1,
            "title": "BMO"
          },
          {
            "deleted": false,
            "id": 1,
            "title": "TD Canada Trust"
          },
          {
            "deleted": false,
            "id": 1,
            "title": "RBC"
          }
        ]
      }
    ''');

    List<dynamic> items = data['items'];
    List<Account> accounts = new List<Account>();

    items.forEach((item) {
      var id = item['id'];
      var title = item['title'];
      var deleted = item['deleted'];
      var account = new Account(
        id: id,
        title: title,
        deleted: deleted
      );

      accounts.add(account);
    });

    return accounts;
  }
}