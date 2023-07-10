import 'package:edureal/screens/home_sreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _auth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();

  List accountType = [
    'Learner',
    'Educator',
  ];
  dynamic dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = accountType[0];
  }

  List gender = ["Male", "Female", "Other"];

  String? selectGender;

  Row addRadioButton(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          fillColor: MaterialStateProperty.all<Color?>(Color(0xff674aef)),
          value: gender[btnValue],
          groupValue: selectGender,
          onChanged: (dynamic value) {
            setState(() {
              selectGender = value;
            });
          },
        ),
        Text(title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }

  String? checkFieldEmpty(String? fieldContent) =>
      fieldContent!.isEmpty ? 'Requires a value' : null;

  String? confirmPasswordValidator(String? confirmPasswordText) {
    if (confirmPasswordController == null ||
        confirmPasswordText!.trim().isEmpty) {
      return 'Reguires a value';
    }
    if (passwordControler.text != confirmPasswordText) {
      return "Passwords don't match";
    }
    return null;
  }

  final passwordControler = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final emailControler = TextEditingController();
  final phoneNumberControler = TextEditingController();
  final nameControler = TextEditingController();
  final usernameControler = TextEditingController();

  late String password, email, phoneNumber, name, username;
  var loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/books.png",
                  height: 320,
                  width: 350,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                Text(
                  "Signup Now",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text("Please enter the details below to continue"),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfff1f1f1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        border: InputBorder.none,
                        hintText: "Account Type",
                        hintStyle: TextStyle(),
                      ),
                      items: accountType.map((accountType) {
                        return DropdownMenuItem(
                          value: accountType,
                          child: Text('$accountType'),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          dropdownValue = val;
                          print(dropdownValue);
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfff1f1f1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: TextFormField(
                      validator: checkFieldEmpty,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        border: InputBorder.none,
                        hintText: "Full Name",
                        hintStyle: TextStyle(),
                      ),
                      onChanged: (value) {
                        name = value;
                      },
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: nameControler,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfff1f1f1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: TextFormField(
                      validator: checkFieldEmpty,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        border: InputBorder.none,
                        hintText: "Username",
                        hintStyle: TextStyle(),
                      ),
                      onChanged: (value) {
                        username = value;
                      },
                      controller: usernameControler,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfff1f1f1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: TextFormField(
                      validator: checkFieldEmpty,
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        border: InputBorder.none,
                        hintText: "Email",
                        hintStyle: TextStyle(),
                      ),
                      onChanged: (value) {
                        email = value;
                      },
                      controller: emailControler,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfff1f1f1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: TextFormField(
                      validator: checkFieldEmpty,
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(),
                      ),
                      onChanged: (value) {
                        password = value;
                      },
                      controller: passwordControler,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfff1f1f1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: TextFormField(
                      validator: confirmPasswordValidator,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        border: InputBorder.none,
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(),
                      ),
                      controller: confirmPasswordController,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    addRadioButton(0, 'Male'),
                    addRadioButton(1, 'Female'),
                    addRadioButton(2, 'Others'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        color: Color(0xff674aef),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            try {
                              UserCredential newUser =
                                  await _auth.createUserWithEmailAndPassword(
                                      email: email, password: password);
                              User? aUser = newUser.user;
                              await FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(aUser!.uid)
                                  .set({
                                'userId': aUser.uid,
                                'fullName': name,
                                'userName': username,
                                'email': email,
                                'gender': selectGender,
                                'accountType': dropdownValue
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ));
                              if (newUser != null) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(),
                                    ));
                              }
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Weak Password')));
                              } else if (e.code == 'email-already-in-use') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text('Email already in use')));
                              }
                            } catch (e) {
                              print(e);
                            }
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.all(18),
                          child: Text(
                            "SIGNUP",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
