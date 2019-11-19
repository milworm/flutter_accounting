class User {
  int id;
  String firstName;
  String lastName;
  String email;
  String password;

  static User instance;

  static bool logIn(String email, String password) {
    if (email == 'admin' && password == 'admin') {
      // allow log in
      var user = new User();

      user.setInfo(1, 'John', 'Doe');
      User.instance = user;

      return true;
    }

    return false;
  }

  void setInfo(int id, String firstName, String lastName) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
  }

  static bool isLogged() {
    return false;
  }

  void logOut() {
    User.instance = null;
  }
}