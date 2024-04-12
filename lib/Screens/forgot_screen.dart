import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app_ui/Screens/otp_screen.dart';
import 'package:shoping_app_ui/Screens/recovery_screen.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool clrButton = false;

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Forgot Password",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Please enter your email address. you will receive a link to create or set a new password via email",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailController,
                onChanged: (value) {
                  if (value != "") {
                    setState(() {
                      clrButton = true;
                    });
                  }
                },
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: "Email",
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          emailController.clear();
                        });
                      },
                      child: Icon(
                        CupertinoIcons.multiply,
                        color: Colors.red,
                      ),
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecoveryScreen(),
                      ));
                },
                child: Text(
                  "Send Code",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(55),
                  backgroundColor: Color(0xffDB3022),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("OR"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OtpScreen(),
                              ));
                        },
                        child: const Text(
                          "Verify Using Number ",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffDB3022),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
