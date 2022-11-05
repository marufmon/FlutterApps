class DecorationList {
  String name;
  String title;
  String price;
  String subtitle;
  int quantity;
  int totalPrice;
  String image;
  int prices;

  DecorationList(this.name, this.title, this.price, this.subtitle, this.image,
      this.totalPrice, this.quantity, this.prices);
  static List<DecorationList> generetedDecorationList() {
    return [
      DecorationList("Matttle room", "All", "\$ 39.0", "Wide Space",
          "images/de7.jpg", 0, 0, 39),
      DecorationList("Execcute room", "Drawing", "\$ 29.0", "well Decoration",
          "images/de10.jpg", 0, 0, 29),
      DecorationList("Master bed", "Acccessories", "\$ 49.0", "Full Decore",
          "images/de3.jpg", 0, 0, 49),
      DecorationList("Drawing room", "Bed", "\$ 71.0", "Colors pointing",
          "images/de4.jpg", 0, 0, 71),
      DecorationList(
          "Dinnig room", "Sopa", "\$ 75.0", "Best", "images/de5.jpg", 0, 1, 75),
      DecorationList("Reading room", "table", "\$ 32.0", "simple",
          "images/de8.jpg", 0, 0, 32),
    ];
  }
}
