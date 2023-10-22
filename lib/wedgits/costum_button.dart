import 'package:flutter/material.dart';

class CostumButton extends StatelessWidget {
  const CostumButton({super.key, this.ontap});
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.greenAccent, borderRadius: BorderRadius.circular(16)),
        width: MediaQuery.of(context).size.width,
        height: 40,
        child: const Center(
            child: Text(
          'Add',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
