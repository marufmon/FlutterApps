class Maruf {
  String title;
  String name;
  String occa;
  String star;
  String img;
  String price;
  String feetile;

  Maruf(this.title, this.name, this.occa, this.price, this.star, this.feetile,
      this.img);

  static List<Maruf> generatedMarufList() {
    return [
      Maruf("all", "Dr Perrin", "Neurology", "fees star\n from", "1200 tk",
          "5 star", "images/d1.jpg"),
      Maruf("Neurology", "Dr Lorry A", "Cardiology", "fees star\n from",
          "1000 tk", "5 star", "images/d2.jpg"),
      Maruf("Heart spacalist", "Dr Maris", "Heart", "fees star\n from",
          "100 tk", "5 star", "images/d4.jpg"),
      Maruf("Liver spacalist", "Dr Karlel", "Liver", "fees star\n from",
          "100 tk", "5 star", "image/d5.jpg"),
    ];
  }
}
