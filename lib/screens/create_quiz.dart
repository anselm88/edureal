import 'package:edureal/screens/add_question_sreen.dart';
import 'package:edureal/services/database.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

class CreateQuiz extends StatefulWidget {
  const CreateQuiz({Key? key}) : super(key: key);

  @override
  State<CreateQuiz> createState() => _CreateQuizState();
}

class _CreateQuizState extends State<CreateQuiz> {
  final _formKey = GlobalKey<FormState>();

  String? quizTitle, quizDescription, quizId;

  DatabaseService databaseService = new DatabaseService();
  bool _isLoading = false;

  CreateQuizOnline() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      quizId = randomAlphaNumeric(16);
      Map<String, String> quizMap = {
        "quizId": quizId!,
        "quizTitle": quizTitle!,
        "quizDescription": quizDescription!,
      };
      await databaseService.addQuizData(quizMap, "quizId").then((value) {
        setState(() {
          _isLoading = false;
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => AddQuestionScreen(),
              ));
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Create Quiz',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1,
          ),
        ),
      ),
      body: _isLoading
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Form(
              child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Quiz Title',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter quiz title';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    quizTitle = value;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Quiz Description',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter quiz description';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    quizDescription = value;
                  },
                ),
                Spacer(),
                MaterialButton(
                  onPressed: () {
                    CreateQuizOnline();
                  },
                  color: Color(0xff674aef),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(18),
                    child: Text(
                      "CREATE QUIZ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
              ]),
            )),
    );
  }
}
