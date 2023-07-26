import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';
import 'package:sobat_warung_ui/pages/home/home_screen.dart';

class DaftarScreen extends StatefulWidget {
  const DaftarScreen({super.key});

  @override
  State<DaftarScreen> createState() => _DaftarScreenState();
}

class _DaftarScreenState extends State<DaftarScreen> {
  final _formKey = GlobalKey<FormState>();
  var nameTextController = TextEditingController();
  var emailTextController = TextEditingController();
  var passwordTextController = TextEditingController();
  bool isvisible = true;
  bool confirmisvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kSecondaryColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Buat akun baru",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  //name
                  Container(
                    padding: const EdgeInsets.only(left: 15.0),
                    decoration: BoxDecoration(
                      color: kGreyColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      controller: nameTextController,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        hintText: "Masukan Nama Lengkap Anda",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
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
                          color: isvisible == true
                              ? kTextGreyColor
                              : kPrimaryColor,
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
                  MaterialButton(
                    color: kPrimaryColor,
                    minWidth: 250,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }
                    },
                    child: const Text(
                      "Daftar",
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
