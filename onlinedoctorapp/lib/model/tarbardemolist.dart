class Maruf {
  String title;
  String name;
  String occa;
  String star;
  String img;
  String price;
  String feetile;
  String rating;

  Maruf(this.rating, this.title, this.name, this.occa, this.price, this.star,
      this.feetile, this.img);

  static List<Maruf> generatedMarufList() {
    return [
      Maruf("5 Star", "all", "Dr Perrin", "Neurology", "fees starts\n from",
          "\$120", "5 star", "images/d1.jpg"),
      Maruf("5 Star", "Neurology", "Dr Lorry A", "Cardiology",
          "fees starts\n from", "\$200 ", "5 star", "images/d2.jpg"),
      Maruf("5 Star", "Heart spacalist", "Dr Maris", "Heart",
          "fees starts\n from", "\$100 ", "5 star", "images/d4.jpg"),
      Maruf("5 Star", "Liver spacalist", "Dr Karlel", "Liver",
          "fees starts\n from", "\$100 ", "5 star", "image/d5.jpg"),
    ];
  }
}
