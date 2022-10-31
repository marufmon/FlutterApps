class ProductList {
  String name;
  String title;
  String price;
  String img;

  ProductList(this.name, this.title, this.price, this.img);
  static List<ProductList> generatedProductList() {
    return [
      ProductList(" Girl T-Shirt", "Yellow Brant ", "570 tk", "images/b23.jpg"),
      ProductList(" Girl T-Shirt", "Aroang Brant", "700 tk", "images/b24.webp"),
      ProductList("Boy T-shirt", "Yellow Brant ", "1570 tk", "images/b25.webp"),
      ProductList("Boy T-shirt", "Aroang Brant", "2050 tk", "images/b26.webp"),
      ProductList(
          "Boy T-shirt", "Rice Man Brant", "3050 tk", "images/g27.webp"),
    ];
  }
}
