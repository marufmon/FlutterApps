class Travel {
  String? name;
  String? address;
  String? image;

  Travel(this.name, this.address, this.image);
  static List<Travel> generatedTravelList() {
    return [
      Travel("Dhaka", "Lalbagkalla", "images/Na1.jpg"),
      Travel("Bandorban", "Dimpahar", "images/na2.jpg"),
      Travel("Gaibandha", "Balashighat", "images/na3.jpg"),
      Travel("Bogra", "Mohahastanghor", "images/na4.jpg"),
      Travel("chanpur", "Trimohoma", "images/na6.jpg"),
      Travel("Gaibandha", "Ghaghot River", "images/na5.jpg"),
    ];
  }
}
