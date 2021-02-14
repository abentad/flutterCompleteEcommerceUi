import 'package:eCommerceApp/widgets/default_button.dart';
import 'package:flutter/material.dart';

class BuildBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Text(
                'Welcome Back',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Sign in with your email and password \nor continue with social media.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff8b8b8b)),
              ),
              SignInForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final formKey = GlobalKey<FormState>();
  final List<String> formErrors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: 20.0),
          buildPasswordFormField(),
          SizedBox(height: 20.0),
          defaultButton(text: "Continue", press: () {}),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Enter you password",
        labelText: "Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.lock),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Enter you email",
        labelText: "Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.mail),
      ),
    );
  }
}
