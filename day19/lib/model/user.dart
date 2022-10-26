class User {
  String? title;
  String? subtile;
  String? time;
  String? image;

  User(this.title, this.subtile, this.time, this.image);

  static List<User> generatedUser() {
    return [
      User("Maruf", "I am flutter developer", "10:09", "images/7.png"),
      User("Nitish", "I am flutter developer", "11:30", "images/8.png"),
      User("Marzan", "I am flutter developer", "12:04", "images/9.png"),
      User("Atik", "I am flutter developer", "1:01", "images/10.png"),
      User("Maruf", "I am flutter developer", "0:28", "images/7.png"),
      User("Nitish", "I am flutter developer", "5:48", "images/8.png"),
      User("Marzan", "I am flutter developer", "6:26", "images/9.png"),
      User("Atik", "I am flutter developer", "8:39", "images/10.png"),
      User("Atik", "I am flutter developer", "1:01", "images/10.png"),
      User("Maruf", "I am flutter developer", "0:28", "images/7.png"),
      User("Nitish", "I am flutter developer", "5:48", "images/8.png"),
      User("Marzan", "I am flutter developer", "6:26", "images/9.png"),
      User("Atik", "I am flutter developer", "8:39", "images/10.png")
    ];
  }
}
