const String st_tableContact = "st_tbl_contact";
const String st_tableContactColId = " st_id";
const String st_tableContactColName = "st_name";
const String st_tableContactColPhone = "phone";
const String st_tableContactColAddress = "address";
const String st_tableContactColDob = "dob";
const String st_tableContactColGender = "gender";
const String st_tableContactColImage = "images";

class StudentModel {
  int? st_id;
  String st_name;
  String phone;
  String? address;
  String? gender;
  String? dob;
  String? images;
  StudentModel(
      {this.st_id,
      required this.st_name,
      required this.phone,
      this.address,
      this.gender,
      this.dob,
      this.images});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      //st_tableContactColId:st_id,
      st_tableContactColName: st_name,
      st_tableContactColPhone: phone,
      st_tableContactColAddress: address,
      st_tableContactColDob: dob,
      st_tableContactColGender: gender,
      st_tableContactColImage: images
    };
    return map;
  }

  factory StudentModel.fromMap(Map<String, dynamic> map) => StudentModel(
        st_id: map[st_tableContactColId],
        st_name: map[st_tableContactColName],
        phone: map[st_tableContactColPhone],
        address: map[st_tableContactColAddress],
        dob: map[st_tableContactColDob],
        gender: map[st_tableContactColGender],
        images: map[st_tableContactColImage],
      );
}
