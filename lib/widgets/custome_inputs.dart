import 'package:flutter/material.dart';

class CusTomeInputs extends StatelessWidget {
  const CusTomeInputs(
      {super.key,
      required this.icons,
      required this.hintText,
      required this.textConTroller,
      required this.validators});

  final IconData icons;
  final String hintText;
  final TextEditingController textConTroller;
  final dynamic validators;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Icon(icons),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextFormField(
              controller: textConTroller,
              decoration:
                  InputDecoration(hintText: hintText, border: InputBorder.none),
              validator: validators),
        )
      ]),
    );
  }
}
