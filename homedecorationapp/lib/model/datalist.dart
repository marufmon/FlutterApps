class DecorationList {
  String name;
  String title;
  String price;
  String subtitle;
  int quantity;

  int totalPrice;

  String image;

  DecorationList(this.name, this.title, this.price, this.subtitle, this.image,
      this.totalPrice, this.quantity);
  static List<DecorationList> generetedDecorationList() {
    return [
      DecorationList("Matttle room", "All", "\$ 29.0", "Wide Space",
          "images/de7.jpg", 0, 1),
      DecorationList("Execcute room", "Drawing", "\$ 29.0", "well Decoration",
          "images/de10.jpg", 0, 1),
      DecorationList("Master bed", "Acccessories", "\$ 39.0", "Full Decore",
          "images/de3.jpg", 0, 1),
      DecorationList("Drawing room", "Bed", "\$ 26.0", "Colors pointing",
          "images/de4.jpg", 0, 1),
      DecorationList(
          "Dinnig room", "Sopa", "\$ 91.0", "Best", "images/de5.jpg", 0, 1),
      DecorationList(
          "Reading room", "table", "\$ 28.0", "simple", "images/de8.jpg", 0, 1),
    ];
  }
}
