import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'receipt_data.dart';


class ReceiptDetail extends StatelessWidget {

  int currentIndex;
  ReceiptDetail({this.currentIndex});


  @override
  Widget build(BuildContext context) {



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
                    'Delete',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.lightBlue,
                  onPressed: () {
                    Provider.of<ReceiptData>(context,listen: false).deleteTask(currentIndex);
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
