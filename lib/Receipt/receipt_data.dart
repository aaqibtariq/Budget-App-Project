import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';
import 'dart:collection';
import 'package:image_picker/image_picker.dart';
import 'receipt_store.dart';

class ReceiptData extends ChangeNotifier {


  List<ReceiptStore> _tasks = [];

  UnmodifiableListView<ReceiptStore> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String name, String date, String note) {

    final task = ReceiptStore(name: name, date: date, note: note);

    _tasks.add(task);
    notifyListeners();
  }

  void addimg(File img ){

    final taskss = ReceiptStore(img: img);

    _tasks.add(taskss);
    notifyListeners();
  }

  void deleteTask(int num) {
    _tasks.removeAt(num);
    notifyListeners();
  }

  imgFromCamera() async {
    print('Camera is called');
    // ignore: deprecated_member_use
    File img = await ImagePicker.pickImage(source: ImageSource.camera);
    addimg(img);
  }

  imgFromGallery() async {
    print('Gallery is Called');
    // ignore: deprecated_member_use
    File img = await ImagePicker.pickImage(source: ImageSource.gallery);
    addimg(img);
  }

}
