import 'package:flutter/material.dart';
import 'package:quiz_app/question_logic.dart';

QuestionLogic questionLogic = QuestionLogic();

void main() => runApp(QuizApp());
void checkAnswer(bool answer){
  bool correctAnswer = _questionLogic.getCorrectAnswer();

  setState(() {
    if (questionLogic.isFinished())
  });
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Quiz',
                style: TextStyle(color: Colors.white, fontSize: 32.0),
              ),
              Text(
                'App',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              )
            ],
          ),
        ),
        backgroundColor: Color(0xff430e48),
        body: QuizPage(),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                Icon(
                  Icons.close,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ),
        Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blueGrey),
                child: Text('4/10',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Membaca doa sebelum dan sesudah makan.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Colors.white)),
                    color: Colors.red,
                  child: Text(
                    'Salah',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                        ),
                  ),
                  onPressed:(){
                    checkAnswer(false);
                   }
                  ),
                ),
              ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Colors.white)),
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text('Benar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                    )
                  ),
                  onPressed: (){
                    checkAnswer(true);
                  },
                ),
              ),
            )
          ],
        )
      ],
    );
  }
  class _QuizScreenState extends State<QuizScreen>{
  List<Widget> scoreResult = [
  Text('Hasil : ',
  style: TextStyle(color: Colors.white),)
  ];
  }
}
