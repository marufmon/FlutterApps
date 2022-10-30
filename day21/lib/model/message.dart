class Message {
  String company;
  String title;
  String location;
  String logoURl;
  String fullTime;

  List<String> req;
  Message(this.company, this.title, this.location, this.logoURl, this.fullTime,
      this.req);
  static List<Message> generatedMessageList() {
    return [
      Message("Google", "Software developer", "66/5 India", "images/m.22.png",
          "Fulltime", [
        "This one of most Famous company in world. Many developer works many Country"
      ]),
      Message("Microsoft", "Native developer", "66/5 Bangladesh",
          "images/m.22.png", "Fulltime", [
        "This one of most Famous company in world. Many developer works many Country"
      ]),
      Message("Brain Station", "Web developer", "66/5 England",
          "images/m.22.png", "Fulltime", [
        "This one of most Famous company in world. Many developer works many Country"
      ])
    ];
  }
}
