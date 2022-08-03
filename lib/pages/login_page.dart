import 'package:flutter/material.dart';

import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/labels.dart';
import 'package:chat/widgets/logo.dart';
import 'package:chat/widgets/terms.dart';
import 'package:chat/widgets/blue_button.dart';






class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),      
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                Logo( titulo: ' GatherPic',),
        
                _form(),
        
                Labels( ruta: 'register',
                        titulo: 'Don´t have an account?',
                        subTitulo: 'Sign Up'    ),
        
                Terms()
                
                
              ],
            ),
          ),
        ),
      )
   );
  }
}



class _form extends StatefulWidget {
  @override
  State<_form> createState() => __formState();
}

class __formState extends State<_form> {

  final emailCtrl = TextEditingController();
  final passCtrl  = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Email',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
            ),

            CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Password',
            textController: passCtrl,
            isPassword: true,
            ),

          
          BlueButton(
            text: 'Sign In',
            onPressed: () {
              print(emailCtrl);
              print(passCtrl);
            },
          ) 
          
        ],
      ),
    );
  }
}



