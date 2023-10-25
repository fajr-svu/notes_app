import 'package:flutter/material.dart';
import 'package:notes_app/wedgits/costum_textfield.dart';
import 'package:notes_app/wedgits/custom_appbar.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Edit Note'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.done),
            ),
          ]),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 4),
          //child: CostumAppBar(title: 'Edit Note', icon: Icons.done),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, right: 10, left: 10),
          child: CostumTextField(hintText: 'Title'),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: CostumTextField(
            hintText: 'Content',
            maxlines: 10,
          ),
        ),
      ]),
    );
  }
}
