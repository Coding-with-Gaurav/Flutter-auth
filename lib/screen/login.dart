import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
// form key
  final _formKey = GlobalKey<FormState>();

//editing controller

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,

// validator
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(15, 15, 15, 15),
          hintText: "Enter Your Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    // Password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.vpn_key),
            contentPadding: EdgeInsets.fromLTRB(15, 15, 15, 15),
            hintText: "Enter Your Password",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15)
                )
                )
                );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){},
        child: Text("Login here", textAlign: TextAlign.center,
        style: TextStyle(
          fontSize:20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child:Padding(
              padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  SizedBox(
                    height: 200,
                    child: Image.asset(
                      "assets/DSVV.png",
                      fit:BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 45),
                  emailField, 
                  passwordField, 
                  loginButton]),
            ),
          ),
          ),
        ),
      ),
    );
  }
}
