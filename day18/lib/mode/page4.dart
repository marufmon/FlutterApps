class Food {
  String? name;
  String? address;
  String? image;

  Food(this.name, this.address, this.image);
  static List<Food> generatedFoodlList() {
    return [
      Food("Gaibandha", "Rosmonjori", "images/4.jpg"),
      Food("Bogura", "Doi", "images/2.jpg"),
      Food("Dhaka", "Bakhurkhali", "images/1.jpg"),
      Food("Padda", "Ellis", "images/7.jpg"),
    ];
  }
}
