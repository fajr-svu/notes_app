import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view_body.dart';
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
      body: const NotesViewBody(),
    );
  }
}





/*appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Notes'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ]),*/