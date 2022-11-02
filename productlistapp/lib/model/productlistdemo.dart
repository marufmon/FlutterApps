class ProductList {
  String name;
  String title;
  String price;
  int prices;
  String img;
  int totalPrice;
  int quantity;

  ProductList(this.name, this.title, this.price, this.img, this.totalPrice,
      this.quantity, this.prices);
  static List<ProductList> generatedProductList() {
    return [
      ProductList(" Girl T-Shirt", "Yellow Brant ", "570 tk", "images/b23.jpg",
          0, 1, 250),
      ProductList(" Girl T-Shirt", "Aroang Brant", "700 tk", "images/b24.webp",
          0, 1, 300),
      ProductList("Boy T-shirt", "Yellow Brant ", "1570 tk", "images/b25.webp",
          0, 1, 300),
      ProductList("Boy T-shirt", "Aroang Brant", "2050 tk", "images/b26.webp",
          0, 1, 400),
      ProductList("Boy T-shirt", "Rice Man Brant", "3050 tk", "images/g27.webp",
          0, 1, 620),
    ];
  }
}
