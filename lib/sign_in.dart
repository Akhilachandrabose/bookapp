import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'util.dart';
import 'sign_up.dart';
import 'home.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  var height, width, size;
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 48,
                width: 123,
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
            login_form(
              text: "email",
              textEditingController: email,
            ),
            VerticalSpacing(20),
            login_form(
              text: "password",
              textEditingController: password,
            ),
            VerticalSpacing(20),
            Padding(
              padding: EdgeInsets.only(left: width / 8.5),
              child: textbuttonfunc(
                width: width,
                text: "forgot password",
              ),
            ),
            VerticalSpacing(20),
            Container(
              height: 50,
              width: 90,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 251, 248, 248),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 15, 14, 14)),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: Text("Sign In"),
              ),
            ),VerticalSpacing(20),
            textbuttonfunc(
                width: width,
                text: "Dont have an acoount.Sign up",
              ),
          ],
        ),
      ),
    );
  }
}

class textbuttonfunc extends StatelessWidget {
  const textbuttonfunc({
    Key? key,
    required this.width,
    required this.text,
  }) : super(key: key);
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Text(
          text,
          style: TextStyle(color: Colors.lightBlueAccent),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUp(),
            ),
          );
        },
      ),
    );
  }
}

class login_form extends StatelessWidget {
  const login_form({
    Key? key,
    required this.text,
    required this.textEditingController,
  }) : super(key: key);
  final String text;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 278,
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: text,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black)),
        ),
      ),
    );
  }
}
