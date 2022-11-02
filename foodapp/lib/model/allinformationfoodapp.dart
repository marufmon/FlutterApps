class ProductList {
  String name;
  String title;
  int price;
  String img;
  int totalPrice;
  int quantity;

  ProductList(this.name, this.title, this.img, this.totalPrice, this.quantity,
      this.price);
  static List<ProductList> generatedProductList() {
    return [
      ProductList("Pizza Hut", "Chiken Pizza", "", 0, 1, 5),
      ProductList("Pizza Hut", "Chiken Berger", "", 0, 1, 5),
      ProductList("Pizza Hut", "Chiken Chiken Fry", "", 0, 1, 5),
      ProductList("Tasty treat", "Chokolate Cake", "", 0, 1, 5),
      ProductList("Tasty treat", "valila Cake", "", 0, 1, 5),
    ];
  }
}
