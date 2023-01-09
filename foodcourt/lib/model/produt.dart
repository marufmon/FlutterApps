class DecorationList {
  String name;
  String title;
  String price;

  int quantity;
  int totalPrice;
  String image;
  int prices;

  DecorationList(this.name, this.title, this.price, this.image, this.totalPrice,
      this.quantity, this.prices);
  static List<DecorationList> generetedDecorationList() {
    return [
      DecorationList(
        "Storoberry",
        "TastyHurt",
        "\$ 100.0",
        "images/m1.jpg",
        0,
        0,
        100,
      ),
      DecorationList(
        "SlideCake",
        "TastyHurt",
        "\$ 200.0",
        "images/m4.jpg",
        0,
        0,
        200,
      ),
      DecorationList(
        "Chocolate",
        "TastyHurt",
        "\$ 300.0",
        "images/m15.jpg",
        0,
        0,
        300,
      ),
      DecorationList(
        "Slide-Storoberry",
        "TastyHurt",
        "\$ 100.0",
        "images/m6.jpg",
        0,
        0,
        100,
      ),
      DecorationList(
        "Chocolate-Bar",
        "TastyHurt",
        "\$ 150.0",
        "images/m7.jpg",
        0,
        1,
        150,
      ),
      DecorationList(
        "Chocolate-Gravy",
        "TastyHurt",
        "\$ 200.0",
        "images/m11.jpg",
        0,
        0,
        200,
      ),
    ];
  }
}
