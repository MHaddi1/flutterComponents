import 'package:brain_bytes/Components/main_img.dart';
import 'package:brain_bytes/Components/social_media.dart';
import 'package:brain_bytes/Screens/sign_up.dart';
import 'package:brain_bytes/consts/image_main.dart';
import 'package:brain_bytes/consts/social_media_list.dart';
import 'package:brain_bytes/my_text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Color myColor = const Color(0xFF46DC87);
    var size = MediaQuery.of(context).size;
    final String image = logoImage[0].imgPath;
    return GestureDetector(
      onTap: () {
        final focusNode = FocusScope.of(context);
        if (!focusNode.hasPrimaryFocus) {
          focusNode.unfocus();
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 30.0, vertical: size.height * 0.1),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MainIMage(mainImage: image),
                  MyText(
                    text: "Log in to MK",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: myColor),
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
                              return const SignUp();
                            }));
                          },
                          child: const MyText(
                            text: 'Sign Up',
                            style: TextStyle(color: Colors.grey),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  SizedBox(
                    // width: MediaQuery.of(context).size.width * 0.8,
                    child: Form(
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
                        )
                      ],
                    )),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          var log = Logger();
                          log.d("Tap!");
                        },
                        child: MyText(
                          text: 'Forget Password?',
                          style: TextStyle(color: myColor),
                        ),
                      ),
                    ],
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
                      const MyText(text: 'Or Login with'),
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
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            myColor, // Change the background color here
                      ),
                      onPressed: () {},
                      child: const MyText(text: 'Log In')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
