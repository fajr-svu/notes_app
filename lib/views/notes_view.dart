import 'package:flutter/material.dart';
import 'package:notes_app/wedgits/costum_listview.dart';
import 'package:notes_app/wedgits/custom_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (contxt) {
                return const CostumBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Notes'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ]),
      body: const Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
