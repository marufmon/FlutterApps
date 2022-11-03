class ProductList {
  String name;
  String title;
  int prices;
  String price;
  String img;
  int totalPrice;
  int quantity;
  String location;
  String rating;

  ProductList(this.rating, this.location, this.price, this.name, this.title,
      this.img, this.totalPrice, this.quantity, this.prices);
  static List<ProductList> generatedProductList() {
    return [
      ProductList("5.0", "15 min", "\$50", "Domiano", "Pizza", "images/p1.jpg",
          0, 1, 5),
      ProductList("5.0", " 7 min", "\$70", "Pizza Hut", "Berger",
          "images/b1.jpg", 0, 1, 10),
      ProductList("5.0", "20 min", "\$60", "Dhaka caffe", "Chiken Fry",
          "images/c1.webp", 0, 1, 25),
      ProductList("5.0", "30 min", "\$5", "Tasty treat", "Valila Cake",
          "images/cake2.jpg", 0, 1, 55),
    ];
  }
}
