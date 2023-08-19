import 'package:flutter/material.dart';

import 'package:unicons/unicons.dart';

import '../../widgets/custome_inputs.dart';

//Login14
class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  final emailController = TextEditingController();

  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    debugPrint("heloo from bibek chhetri");
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(bottom: 40),
            color: const Color.fromARGB(255, 238, 236, 236),
            width: screenWidth,
            height: screenHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderContainer(
                    screenHeight: screenHeight, screenWidth: screenWidth),
                //bottomContainer
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CusTomeInputs(
                          icons: Icons.email,
                          hintText: "Enter Yours Email",
                          textConTroller: emailController,
                          validators: (value) {
                            if (value == "") {
                              return "Enter The Empty Feilds ";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CusTomeInputs(
                          icons: Icons.vpn_key,
                          hintText: "password",
                          textConTroller: passController,
                          validators: (value) {
                            if (value == "") {
                              return "Enter The Empty Feilds ";
                            }
                            return null;
                          },
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(top: 10, right: 2),
                          child: const Text(
                            "ForgetPassword??",
                            style: TextStyle(),
                          ),
                        ),
                        const Spacer(),
                        RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                                text: "Don't have any accounts?",
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: " Signup",
                                style: TextStyle(color: Colors.orange))
                          ]),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      //  padding: const EdgeInsets.all(2),
      height: screenHeight * 0.35,
      width: screenWidth,
      decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70))),
      child: Stack(children: [
        Container(),
        const Center(
            child: Icon(
          UniconsLine.car,
          size: 58,
          color: Colors.white,
        )),
        Positioned(
            bottom: 20,
            right: 20,
            child: Container(
                alignment: Alignment.bottomRight,
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )))
      ]),
    );
  }
}
