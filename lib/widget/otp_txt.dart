

import 'package:confrim_phone/theme/mycolor.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
class otptxt extends StatefulWidget {
  final void Function()? function;
  OtpFieldController? otpController;
  otptxt({Key? key,  this.function, this.otpController}) : super(key: key);

  @override
  State<otptxt> createState() => _otptxtState();
}

class _otptxtState extends State<otptxt> {
  @override
  Widget build(BuildContext context) {
    return      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        child: OTPTextField(
          controller: widget.otpController,
          length: 4,
          width: MediaQuery.of(context).size.width,
          fieldWidth: 50,

          otpFieldStyle: OtpFieldStyle(
   backgroundColor: Colors.white,
              borderColor: mycolor.red,

              focusBorderColor: Colors.orange //(here)
          ),      style: TextStyle(
              fontSize: 17
          ),
          textFieldAlignment: MainAxisAlignment.spaceAround,
          //fieldStyle: FieldStyle.underline,
          onCompleted: (pin) {
            print("Completed: " + pin);
          },
        ),
      ),
    );
  }
}
