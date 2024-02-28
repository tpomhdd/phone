import 'dart:math';

import 'package:confrim_phone/man_widget/Btn.dart';
import 'package:confrim_phone/man_widget/MyImg.dart';
import 'package:confrim_phone/man_widget/mytext.dart';
import 'package:confrim_phone/man_widget/textfiled.dart';
import 'package:confrim_phone/myclinte.dart';
import 'package:confrim_phone/screen/entercode.dart';
import 'package:confrim_phone/theme/mycolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Confirm_phone extends StatefulWidget {
  const Confirm_phone({Key? key}) : super(key: key);

  @override
  State<Confirm_phone> createState() => _Confirm_phoneState();
}

class _Confirm_phoneState extends State<Confirm_phone> {
  TextEditingController  controller=new TextEditingController();

  @override
  Widget build(BuildContext context) {
  // controller.text='963940071446';
    return 
      Directionality(
      textDirection: TextDirection.rtl,
      child:  Scaffold(


        backgroundColor: mycolor.background,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: MyText(color: mycolor.text, text: 'تسجيل الدخول', size: 17),
          centerTitle: true,
        ) ,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                child: MyImg(width: 300, height: 300, url: 'IMG/img.jpg')),
            MyText(color: mycolor.text, text: 'الرجاء ادخال رقم الهاتف المحمول حتى نتمكن من التحقق', size: 18),
            MyTextField(text: 'text', mycolor: mycolor.red,controller: controller,),
            MyButton(text: 'التالي', mycolor: mycolor.red,onPressed: (){
              final Random _random =
              Random(); // Create a Random object for generating random numbers
              int _randomNumber = 0;
              _randomNumber =
                  1000 + _random.nextInt(9000);
              print(_randomNumber.toString());
              Myclient.add_product(controller.text,_randomNumber.toString());
              Myclient.send(controller.text, _randomNumber.toString());
Get.to(entercade(code: _randomNumber.toString(), phone: controller.text,));
            },),
            MyText(color: mycolor.text, text: 'اذا كان لديك استفسارات فلا تردد في الاتصال بنا', size: 14),
            MyText(color: mycolor.red, text: 'المساعدة الدعم', size: 17,fontWeight: FontWeight.w600,),


          ],
          ),
        ),


      ),
    );
  }
}
