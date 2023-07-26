import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/pages/home/home_screen.dart';
import 'package:sobat_warung_ui/pages/login_screens/daftar_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kSecondaryColor,
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: const [
                  Spacer(),
                  Text(
                    "Selamat Datang di Aplikasi Sobat Warung",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFields(),
                  Spacer(),
                ],
              ),
            ),
          ),
        ));
  }
}

class TextFields extends StatefulWidget {
  const TextFields({
    super.key,
  });

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  final _formKey = GlobalKey<FormState>();
  var emailTextController = TextEditingController();
  var passwordTextController = TextEditingController();
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          //email
          Container(
            padding: const EdgeInsets.only(left: 15.0),
            decoration: BoxDecoration(
              color: kGreyColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              controller: emailTextController,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Email";
                }
                //email validator
                final bool _isvalid =
                    EmailValidator.validate(emailTextController.text);
                if (!_isvalid) {
                  return "Email was entered incorrectly";
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: "Masukan Email Anda",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          // Password
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15.0),
            decoration: BoxDecoration(
              color: kGreyColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              obscureText: isvisible,
              controller: passwordTextController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Password";
                }

                return null;
              },
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isvisible = !isvisible;
                    });
                  },
                  icon: isvisible == true
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                  color: isvisible == true ? kTextGreyColor : kPrimaryColor,
                ),
                hintText: "Masukan password Anda",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // button
          MaterialButton(
            color: kPrimaryColor,
            minWidth: 250,
            height: 50,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }
            },
            child: const Text(
              "Masuk",
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Belum punya akun ?",
                style: TextStyle(
                  color: kTextGreyColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DaftarScreen()));
                },
                child: const Text(
                  "Daftar",
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
