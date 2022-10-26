class Message {
  String logoURl;
  String title;
  String fullTime;
  String company;
  String location;
  List<String> req;
  Message(this.logoURl, this.title, this.fullTime, this.location, this.company,
      this.req);
  static List<Message> generatedMessageList() {
    return [Message("", "", "", "", "", [])];
  }
}
