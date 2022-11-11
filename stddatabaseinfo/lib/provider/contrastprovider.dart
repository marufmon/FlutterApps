import 'package:flutter/foundation.dart';
import 'package:stddatabaseinfo/model/stddatalist.dart';
import 'package:stddatabaseinfo/mydb_helper/mydbhelper.dart';

class StudentContactProvider extends ChangeNotifier {
  List<StudentModel> contactList = [];
  getAllContacts() async {
    contactList = await DBHelpers.getAllContacts();
    notifyListeners();
  }

  Future<bool> insertContact(StudentModel studentModel) async {
    final rowId = await DBHelpers.insertStContact(studentModel);
    if (rowId > 0) {
      studentModel.st_id = rowId;
      contactList.add(studentModel);
      notifyListeners();
      return true;
    }
    return false;
  }

  updateFavorite(int id, bool favorite, int index) async {
    final value = favorite ? 0 : 1;
    final rowId = await DBHelpers.updateFavarite(id, value);
    if (rowId > 0) {
      contactList[index].isFav = contactList[index].isFav;
      notifyListeners();
    }
  }
}
