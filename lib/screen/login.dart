import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({Key? key}) : super(key: key));

@override
_LoginScreenState createState()=>_LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen>{

// form key
  final FormKey = GlobalKey<FormState>();

//editing controller

final TextEditingController emailController = new  TextEditingController();
final TextEditingController passwordController = new  TextEditingController();

  @override
  Widget build(BuildContext context){
    return Container();
  }
}