enum UserType { Admin, Master, Student }

class User {
  final String uid;
  final String username;
  final UserType userType;

  User({this.uid, this.username, this.userType});
}
