import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'receipt_data.dart';
import 'receipt_detail.dart';

class ReceiptList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ReceiptData>(
      builder: (context, taskDataa, child) {
        return ListView.builder(
          itemCount: taskDataa.tasks.length,
          itemBuilder: (context, index) {
            final task = taskDataa.tasks[index];

            return Card(
              color: Colors.black,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: ReceiptDetail(currentIndex: index),
                      ),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.file(task.img),

                    ),
                    // Container(
                    //   padding: const EdgeInsets.all(10.0),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Text(task.name ??  'No Name', style: TextStyle(
                    //         color: Colors.white,
                    //       ),),
                    //       Text(task.date?? 'No Date', style: TextStyle(
                    //         color: Colors.white,
                    //       ),),
                    //       Text(task.note?? 'No note', style: TextStyle(
                    //         color: Colors.white,
                    //       ),),
                    //     ],
                    //   ),
                    // )
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
