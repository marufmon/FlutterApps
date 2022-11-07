class DecorationList {
  int quantity;
  int totalPrice;
  int prices;

  DecorationList(this.totalPrice, this.quantity, this.prices);
  static List<DecorationList> generetedDecorationList() {
    return [
      DecorationList(0, 0, 39),
      DecorationList(0, 0, 39),
      DecorationList(0, 0, 39),
    ];
  }
}
