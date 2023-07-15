import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oak_appian/screens/main_screen.dart';
import 'package:oak_appian/widgets/custom_button.dart';
import 'package:oak_appian/widgets/text_field_input.dart';

class StepAwayScreen extends StatelessWidget {
  const StepAwayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
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
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Text(
                  'Just a step away !',
                  style: GoogleFonts.getFont('Lexend',
                      fontSize: 22, color: Colors.black),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                TextFieldInput(
                    contentPadding: 5,
                    hintText: 'Full name',
                    controller: nameController),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                TextFieldInput(
                    contentPadding: 5,
                    hintText: 'Email ID',
                    controller: emailController),
                Expanded(child: Container()),
                Custombutton(
                  text: 'Continue',
                  onTap: () async {
                    String name = nameController.text;
                    String email = emailController.text;

                    final User? user = FirebaseAuth.instance.currentUser;
                    if (user != null) {
                      try {
                        // Create a new Firestore document with the user's data
                        await FirebaseFirestore.instance
                            .collection('users')
                            .doc(user.uid)
                            .set({
                          'name': name,
                          'email': email,
                        });

                        // Navigate to the next screen (HomeScreen) after data is stored
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainScreen()),
                        );
                      } catch (e) {
                        // Handle data storage error
                      }
                    }
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                )
              ],
            ),
          )),
    );
  }
}
