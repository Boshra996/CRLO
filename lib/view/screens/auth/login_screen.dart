import 'package:crlo/view/screens/home_screen.dart';
import 'package:crlo/view/widgets/rounded_button.dart';
import 'package:crlo/view/widgets/rounded_input_field.dart';
import 'package:crlo/view/widgets/rounded_password_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context){
    Size size =MediaQuery.of(context).size;
      return Scaffold(
        body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(140, 50, 0, 10),
                child: Row(
                   children: [
                     Text("LOG",style: TextStyle(
                    fontSize: 28,
                    fontWeight:FontWeight.normal ,
                         color:Color(0xff7cc8c4),
                      ),
                      ),
                      SizedBox(
                      width: 5,
                      ),
                      Text("IN",style: TextStyle(
                      fontSize: 28,
                      fontWeight:FontWeight.normal ,
                        color:Color(0xfff3766f),
                      ),
                      )
                   ],
                 ),
            ),
            SizedBox(
              width: 200,
              // height: size.height * 0.35,
              child: Image.asset('assets/images/background.png'),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) =>HomeScreen()));
              },
            ),
            RoundedButton(
              text: "Continue As A Guest",
              press: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) =>HomeScreen()));
              },
            ),
            SizedBox(height: size.height * 0.03),






          //
          // child: Padding(
          //    padding: EdgeInsets.only(left: 0 ,right: 0, top: 30),
          //        child: Column(
          //            children: [
          //              Container(
          //                padding: EdgeInsets.only(left: 135,right: 0, top: 30),
          //
          //                child: Row(
          //            children: [
          //
          //              Text("Log",style: TextStyle(
          //             fontSize: 28,
          //             fontWeight:FontWeight.normal ,
          //                  color:Color(0xff7cc8c4),
          //               ),
          //               ),
          //               SizedBox(
          //               width: 5,
          //               ),
          //               Text("In",style: TextStyle(
          //               fontSize: 28,
          //               fontWeight:FontWeight.normal ,
          //                 color:Color(0xfff3766f),
          //               ),
          //               )
          //               ],
          //               ),
          //                                  ),
          //               SizedBox(
          //               height: 20,
          //               ),
          //                SizedBox(
          //                  width: 200,
          //                  height: 150,
          //                  child: Image.asset('assets/images/background.png'),
          //                ),
          //              SizedBox(
          //                height: 20,
          //              ),
          //                TextFormField(
          //                  controller: email,
          //                  obscureText: false,
          //                  cursorColor: Colors.black87,
          //                  keyboardType: TextInputType.text,
          //                  validator: (value)=>(value),
          //                  decoration: InputDecoration(
          //                      fillColor: Colors.grey.shade200,
          //                      prefixIcon: Icon(
          //                        Icons.email,
          //                        color: Color(0xfff3766f),
          //                        size: 20,
          //                      ),
          //                      suffixIcon: const Text(""),
          //                      hintText: 'email',
          //                      helperStyle: TextStyle(
          //                        color: Colors.black45,
          //                        fontSize: 16,
          //                        fontWeight: FontWeight.normal
          //                      ),
          //                      filled: true,
          //                      enabledBorder: OutlineInputBorder(
          //                        borderSide: BorderSide(
          //                          color: Colors.white,
          //                        ),
          //                        borderRadius: BorderRadius.circular(10),
          //                      ),
          //                      focusedBorder:  OutlineInputBorder(
          //                        borderSide: BorderSide(
          //                          color: Colors.white,
          //                        ),
          //                        borderRadius: BorderRadius.circular(20),
          //                      )
          //                  )
          //                  ,
          //                ),
                         SizedBox(
                           height: 10,
                         ),




            ],
          ) ,
        ),
);

  }

}

