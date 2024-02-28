import 'package:confrim_phone/man_widget/Btn.dart';
import 'package:confrim_phone/man_widget/MyImg.dart';
import 'package:confrim_phone/myclinte.dart';
import 'package:confrim_phone/theme/mycolor.dart';
import 'package:confrim_phone/widget/otp_txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:quickalert/quickalert.dart';

import '../man_widget/mytext.dart';
class entercade extends StatefulWidget {
  final String code;
  final String phone;
  const entercade({Key? key, required this.code, required this.phone}) : super(key: key);


  @override
  State<entercade> createState() => _entercadeState();
}

class _entercadeState extends State<entercade> {
OtpFieldController controller=new OtpFieldController();

@override
  Widget build(BuildContext context) {
    return
      Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(


          backgroundColor: mycolor.background,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: MyText(color: mycolor.text, text: 'ادخل رمز التاكيد', size: 17),
            centerTitle: true,
          ) ,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyImg(width: 300, height: 300, url: 'IMG/y.png'),
otptxt(otpController: controller,),
                MyButton(text: 'تاكيد', mycolor: mycolor.red,onPressed: (){
                 if(widget.code==controller.toString())
                   {


                     QuickAlert.show(context: context, type: QuickAlertType.success,
                         title: "التسجيل صحيح");                 }
                 else {

                   QuickAlert.show(context: context, type: QuickAlertType.error,
                   title: "التسجيل خاطئ");
                   Myclient.bloak(widget.phone);

                 }          print(controller.toString());
                },)


              ],
            ),
          ),


        ),
      );;
  }
}
