import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Theme(
       data: ThemeData(
         accentColor: Colors.red,
         primarySwatch: Colors.red,
           colorScheme: ColorScheme.light(
               primary: Colors.red,
           ),
       ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Stepper App",style: TextStyle(color: Colors.white)),
        ),
        body: Stepper(
          currentStep: currentStep,
          onStepContinue: () {
            setState(() {
              if (currentStep < 2) {
                currentStep += 1;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (currentStep > 0) {
                currentStep -= 1;
              }
            });
          },
          steps: [
            Step(
              title: Text("SignUp"),
              content: Column(
                children: [
                  TextField(decoration: InputDecoration(hintText: "Full Name",hintStyle:  TextStyle(color: Colors.grey),prefixIcon: Icon(Icons.person_2_outlined))),
                  TextField(decoration: InputDecoration(hintText: "Email ID",hintStyle:  TextStyle(color: Colors.grey),prefixIcon: Icon(Icons.email))),
                  TextField(decoration: InputDecoration(hintText: "Password",hintStyle:  TextStyle(color: Colors.grey),prefixIcon: Icon(Icons.lock))),
                  TextField(decoration: InputDecoration(hintText: "Conform password",hintStyle:  TextStyle(color: Colors.grey),prefixIcon: Icon(Icons.lock))),
                ],
              ),
              isActive: currentStep == 0,
            ),
            Step(
              title: Text('Login'),
              content: Column(
                children: [
                  TextField(decoration: InputDecoration(hintText: "User Name",hintStyle:  TextStyle(color: Colors.grey),prefixIcon: Icon(Icons.person_2_outlined))),
                  TextField(decoration: InputDecoration(hintText: "Password",hintStyle:  TextStyle(color: Colors.grey),prefixIcon: Icon(Icons.lock))),
                ],
              ),
              isActive: currentStep == 1,
            ),
            Step(
              
              title: Text('Submit'),
              content: Text('Submit'),
              isActive: currentStep == 2,
            ),
          ],
        ),
      ),
    );
  }
}
