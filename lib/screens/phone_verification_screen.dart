import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oak_appian/screens/step_way_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:oak_appian/widgets/custom_button.dart';

class PhoneVerificationScreen extends StatefulWidget {
  final String verificationId;
  const PhoneVerificationScreen({
    Key? key,
    required this.verificationId,
  }) : super(key: key);

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  final TextEditingController otpController = TextEditingController();

  @override
  void dispose() {
    // Dispose the otpController when the widget is disposed
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text(
          'OTP Verification',
          style: GoogleFonts.getFont('Lexend', color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.04),
              Text(
                'We have sent a verification code to',
                style: GoogleFonts.getFont(
                  'Lexend',
                  color: Colors.black54,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '+91-XXXXXX6794',
                    style: GoogleFonts.getFont(
                      'Lexend',
                      color: Colors.black87,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.055),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  controller: otpController, // Assign otpController here
                  onChanged: (value) {
                    // Handle OTP field value change
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.underline,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 40,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    activeColor: Colors.black,
                    selectedColor: Colors.black,
                    inactiveColor: Colors.grey,
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Custombutton(
                  text: 'Continue',
                  onTap: () async {
                    final credentials = PhoneAuthProvider.credential(
                      verificationId: widget.verificationId,
                      smsCode: otpController.text.toString(),
                    );

                    try {
                      await FirebaseAuth.instance
                          .signInWithCredential(credentials);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StepAwayScreen(),
                        ),
                      );
                    } catch (e) {
                      print(e.toString());
                    }
                  },
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn\'t receive the code?',
                    style: GoogleFonts.getFont(
                      'Lexend',
                      color: Colors.black54,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Resend Again',
                    style: GoogleFonts.getFont(
                      'Lexend',
                      color: const Color.fromARGB(255, 89, 16, 125),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
