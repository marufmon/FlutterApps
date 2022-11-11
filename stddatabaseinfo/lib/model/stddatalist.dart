const String st_tableContact = 'st_tbl_contact';
const String st_tableContactColId = 'st_id';
const String st_tableContactColName = 'st_name';
const String st_tableContactColPhone = 'phone';
const String st_tableContactColAddress = 'address';
const String st_tableContactColDob = 'dob';
const String st_tableContactColGender = 'gender';
const String st_tableContactColImage = 'image';
const String st_tableContactColFav = 'isFav';

class StudentModel {
  int? st_id;
  String st_name;
  String phone;
  String? address;
  String? dob;
  String? gender;
  String? image;
  bool isFav;

  StudentModel(
      {this.st_id,
      required this.st_name,
      required this.phone,
      this.address,
      this.dob,
      this.gender,
      this.image,
      this.isFav = false});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      st_tableContactColName: st_name,
      st_tableContactColPhone: phone,
      st_tableContactColAddress: address,
      st_tableContactColDob: dob,
      st_tableContactColGender: gender,
      st_tableContactColImage: image,
      st_tableContactColFav: isFav ? 1 : 0,
    };
    if (st_id != null) {
      map[st_tableContactColId] = st_id;
    }
    return map;
  }

  factory StudentModel.fromMap(Map<String, dynamic> map) => StudentModel(
        st_id: map[st_tableContactColId],
        st_name: map[st_tableContactColName],
        phone: map[st_tableContactColPhone],
        address: map[st_tableContactColAddress],
        dob: map[st_tableContactColDob],
        gender: map[st_tableContactColGender],
        image: map[st_tableContactColImage],
        isFav: map[st_tableContactColFav] == 1 ? true : false,
      );
}
