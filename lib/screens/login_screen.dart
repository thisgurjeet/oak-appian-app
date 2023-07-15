import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oak_appian/screens/phone_verification_screen.dart';
import 'package:oak_appian/widgets/custom_button.dart';
import 'package:oak_appian/widgets/text_field_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneController = TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: size.height * 0.40,
              width: size.width,
              child: Stack(
                children: [
                  const Image(
                    image: AssetImage(
                      'assets/images/v51.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      left: size.width / 3.4,
                      top: size.height * 0.05,
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.10,
                            child: const Image(
                              image: AssetImage('assets/images/logo1.png'),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            'Craft My Plate',
                            style: GoogleFonts.getFont('Lexend',
                                fontSize: 23, color: Colors.white),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login or Signup',
                    style: GoogleFonts.getFont('Lexend',
                        fontSize: 18,
                        color: Colors.black54,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: size.height * 0.035,
                  ),
                  TextFieldInput(
                      contentPadding: 0,
                      hintText: 'Enter Phone Number',
                      controller: phoneController),
                  SizedBox(
                    height: size.height * 0.023,
                  ),
                  Custombutton(
                    text: 'Continue',
                    onTap: () {
                      FirebaseAuth auth = FirebaseAuth.instance;
                      auth.verifyPhoneNumber(
                          phoneNumber: phoneController.text,
                          verificationCompleted: (_) {},
                          verificationFailed: (e) {
                            e.toString();
                          },
                          codeSent: (String verificationId, int? token) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PhoneVerificationScreen(
                                          verificationId: verificationId,
                                        )));
                          },
                          codeAutoRetrievalTimeout: (e) {
                            e.toString();
                          });
                    },
                  )
                ],
              ),
            ),
            Expanded(child: Container()),
            Align(
              alignment: Alignment.center,
              child: Text(
                'By continuing, you agree to our',
                style: GoogleFonts.getFont('Lexend',
                    fontSize: 16, color: Colors.black54),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text('Terms of Service  Privacy Policy',
                  style: GoogleFonts.getFont('Lexend',
                      fontSize: 16, color: Colors.black54)),
            ),
            SizedBox(
              height: size.height * 0.03,
            )
          ]),
        ),
      ),
    );
  }
}
