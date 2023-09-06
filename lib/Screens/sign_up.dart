import 'package:brain_bytes/Components/main_img.dart';
import 'package:brain_bytes/Components/social_media.dart';
import 'package:brain_bytes/Screens/login_screen.dart';
//import 'package:brain_bytes/Screens/login_screen.dart';
import 'package:brain_bytes/consts/image_main.dart';
import 'package:brain_bytes/consts/social_media_list.dart';
import 'package:brain_bytes/my_text_widgets.dart';
import 'package:flutter/material.dart';
//import 'package:logger/logger.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final String image = logoImage[0].imgPath;
  Color myColor = const Color(0xFF46DC87);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        final focusNode = FocusScope.of(context);
        if (!focusNode.hasPrimaryFocus) {
          focusNode.unfocus();
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: 30.0, vertical: size.height * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MainIMage(mainImage: image),
              MyText(
                text: "Create Account",
                style: TextStyle(
                    fontSize: 35, fontWeight: FontWeight.bold, color: myColor),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MyText(text: "Need an account?"),
                  const SizedBox(
                    width: 5.0,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const LoginScreen();
                        }));
                      },
                      child: const MyText(
                        text: 'Log In',
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Email',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: myColor)),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: '******',
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: myColor))),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: '******',
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: myColor))),
                  )
                ],
              )),
              const SizedBox(
                height: 10.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    text: '-------------------   ',
                    style: TextStyle(color: myColor),
                  ),
                  const MyText(text: 'Or Sign Up with'),
                  MyText(
                    text: '   -------------------',
                    style: TextStyle(color: myColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(socialMedias.length,
                      (index) => SocialMedia(social: socialMedias[index])),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        myColor, // Change the background color here
                  ),
                  onPressed: () {},
                  child: const MyText(text: 'Create an Account')),
              MyText(
                text:
                    'By signing up you agree to \n Terms and Conditions of Use',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
