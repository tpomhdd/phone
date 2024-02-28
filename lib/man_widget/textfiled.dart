
import 'package:confrim_phone/man_widget/MyImg.dart';
import 'package:confrim_phone/man_widget/mytext.dart';
import 'package:confrim_phone/theme/mycolor.dart';
import 'package:flutter/material.dart';
class MyTextField extends StatefulWidget {
final TextEditingController? controller;
final String text;
final bool? pass;
final Color mycolor;
const MyTextField({Key? key, this.controller,required  this.text,this.pass, required this.mycolor}) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: widget.controller,

      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
label: Row(
  children: [
    MyImg(width: 24, height: 25, url: 'IMG/sy.png'),
    MyText(color: mycolor.text, text: '+963', size: 12),
    VerticalDivider(width: 2,color: mycolor.text,)
  ],
),


          fillColor:Colors.white,
          hintText: 'To Name',



          border:
          OutlineInputBorder(
              borderSide: BorderSide(width: 2,color: mycolor.red),
              borderRadius: BorderRadius.circular(10))

      ),
    ),
      );
  }
}
