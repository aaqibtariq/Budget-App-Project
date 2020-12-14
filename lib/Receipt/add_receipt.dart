import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'receipt_data.dart';
import 'dart:io';

class AddReceipt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    File _image;

    ReceiptData img = ReceiptData();

    String name;
    String date;
    String note;

    return Container(
      color: Colors.black,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[

                FlatButton(
                  child: Text(
                    'From Camera',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.lightBlue,
                  onPressed: () {
                    Provider.of<ReceiptData>(context, listen: false)
                        .imgFromCamera();
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text(
                    'From Gallery',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.lightBlue,
                  onPressed: () {
                    Provider.of<ReceiptData>(context, listen: false)
                        .imgFromGallery();
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
