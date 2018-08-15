import 'package:flutter/material.dart';
import 'package:flutter_girlies_store/tools/app_data.dart';
import 'package:flutter_girlies_store/tools/app_methods.dart';
import 'package:flutter_girlies_store/tools/app_tools.dart';
import 'package:flutter_girlies_store/tools/firebase_methods.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController fullname = new TextEditingController();
  TextEditingController phoneNumber = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController re_password = new TextEditingController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  BuildContext context;
  AppMethods appMethod = new FirebaseMethods();

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: new AppBar(
        title: new Text("Sign Up"),
        centerTitle: false,
        elevation: 0.0,
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new SizedBox(
              height: 30.0,
            ),
            appTextField(
                isPassword: false,
                sidePadding: 18.0,
                textHint: "Full Name",
                textIcon: Icons.person,
                controller: fullname),
            new SizedBox(
              height: 30.0,
            ),
            appTextField(
                isPassword: false,
                sidePadding: 18.0,
                textHint: "Phone Number",
                textIcon: Icons.phone,
                textType: TextInputType.number,
                controller: phoneNumber),
            new SizedBox(
              height: 30.0,
            ),
            appTextField(
                isPassword: false,
                sidePadding: 18.0,
                textHint: "Email Address",
                textIcon: Icons.email,
                controller: email),
            new SizedBox(
              height: 30.0,
            ),
            appTextField(
                isPassword: true,
                sidePadding: 18.0,
                textHint: "Password",
                textIcon: Icons.lock,
                controller: password),
            new SizedBox(
              height: 30.0,
            ),
            appTextField(
                isPassword: true,
                sidePadding: 18.0,
                textHint: "Re-Password",
                textIcon: Icons.lock,
                controller: re_password),
            appButton(
                btnTxt: "Create Account",
                onBtnclicked: verifyDetails,
                btnPadding: 20.0,
                btnColor: Theme.of(context).primaryColor),
          ],
        ),
      ),
    );
  }

  verifyDetails() async {
    if (fullname.text == "") {
      showSnackBar("Full name cannot be empty", scaffoldKey);
      return;
    }

    if (phoneNumber.text == "") {
      showSnackBar("Phone cannot be empty", scaffoldKey);
      return;
    }

    if (email.text == "") {
      showSnackBar("Email cannot be empty", scaffoldKey);
      return;
    }

    if (password.text == "") {
      showSnackBar("Password cannot be empty", scaffoldKey);
      return;
    }

    if (re_password.text == "") {
      showSnackBar("Re-Password cannot be empty", scaffoldKey);
      return;
    }

    if (password.text != re_password.text) {
      showSnackBar("Passwords don't match", scaffoldKey);
      return;
    }

    displayProgressDialog(context);
    String response = await appMethod.createUserAccount(
        fullname: fullname.text,
        phone: phoneNumber.text,
        email: email.text.toLowerCase(),
        password: password.text.toLowerCase());

    if (response == successful) {
      closeProgressDialog(context);
      Navigator.of(context).pop();
      Navigator.of(context).pop(true);
    } else {
      closeProgressDialog(context);
      showSnackBar(response, scaffoldKey);
    }
  }
}
