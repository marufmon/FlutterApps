class ShoppingList {
  String title;
  String name;
  String price;
  int prices;
  int totalPrice;
  int quantity;
  String image;
  String airphoneImg;
  String name2;
  String prices2;

  ShoppingList(this.title, this.name, this.price, this.prices, this.totalPrice,
      this.quantity, this.image, this.airphoneImg, this.name2, this.prices2);

  static List<ShoppingList> generatedShoppingList() {
    return [
      ShoppingList("AKG N56789SNCM2", "Wireless", "\$ 39", 39, 0, 1,
          "images/h1.jpg", "images/ha1.jpg", "Airpod", "\$ 502"),
      ShoppingList("AKG N460NCM2", "Wireless", "\$ 29", 29, 0, 1,
          "images/h2.jpg", "images/ha2.jpg", "Airpod", "\$ 550"),
      ShoppingList("AKG M1000NCM2", "Wireless", "\$ 19", 19, 0, 1,
          "images/h3.webp", "images/ha3.jpg", "Airpod", "\$ 602"),
      ShoppingList("AIAIAI G550NCM2", "Wireless", "\$ 59", 59, 0, 1,
          "images/h4.jpg", "images/ha4.jpg", "Airpod", "\$ 412"),
      ShoppingList("AIAIAI H10NCM2", "Wireless", "\$ 30", 30, 0, 1,
          "images/h5.webp", "images/ha5.jpg", "Airpod", "\$ 372"),
      ShoppingList("AIAIAI R903NCM2", "Wireless", "\$ 9", 9, 0, 1,
          "images/h6.jpg", "images/ha7.jpg", "Airpod", "\$ 299"),
    ];
  }
}
