import 'package:flutter/material.dart';
import 'package:notes_app/wedgits/costum_button.dart';
import 'package:notes_app/wedgits/costum_textfield.dart';

class CostumBottomSheet extends StatelessWidget {
  const CostumBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CostumTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            CostumTextField(
              hintText: 'Content',
              maxlines: 6,
            ),
            SizedBox(
              height: 20,
            ),
            CostumButton(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
