import 'package:flutter/material.dart';
import 'questions.dart';
import 'ques_ans.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Quiz_app()
  ));
}
class Quiz_app extends StatefulWidget {
  const Quiz_app({Key? key}) : super(key: key);

  @override
  _Quiz_appState createState() => _Quiz_appState();
}

class _Quiz_appState extends State<Quiz_app> {
  List? _truth_values = [];
  Random rand = new Random();
  question? curr_ques;
  List<question> questions = Questions;
  @override
  Widget build(BuildContext context) {
    curr_ques = questions[rand.nextInt(questions.length)];
    return Scaffold(
      appBar: AppBar(
        title: Text('Trivia Quiz'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.grey[800],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 180.0,
                horizontal: 25.0
              ),
              child: Center(
                child: Text(
                    curr_ques!.ques!,
                  style: TextStyle(
                    color: Colors.grey[100],
                    fontSize: 30.0
                  )
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 150.0
              ),
              child: TextButton(
                  onPressed: (){
                    setState(() {
                        _truth_values!.add(curr_ques!.ans);
                        int ques_no = rand.nextInt(questions.length);
                        curr_ques = questions[ques_no];
                        if(_truth_values!.length > 16) {
                          _truth_values = [];
                        }
                      });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0
                    ),
                    primary: Colors.white
                  ),
                  child: Text(
                    'True',
                    style: TextStyle(
                      fontSize: 20.0
                    ),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 150.0
              ),
              child: TextButton(
                  onPressed: (){
                    setState(() {
                        int ques_no = rand.nextInt(questions.length);
                        _truth_values!.add(!(curr_ques!.ans)!);
                        curr_ques = questions[ques_no];
                        if(_truth_values!.length > 16)
                          {
                            _truth_values = [];
                          }
                        });
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 25.0
                      ),
                      primary: Colors.white
                  ),
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontSize: 20.0
                    )
                  )
              ),
            ),
            Icon_bar()
          ]
        )
      )
    );
  }
  Widget Icon_bar()
  {
    return Row(
      children: _truth_values!.map((truth_value) => add_icon(truth_value)).toList(),
    );
  }
  Widget add_icon(bool truth_val)
  {
    if(truth_val) return Icon(
        Icons.check,
        color: Colors.green
    );
    else return Icon(
        Icons.close,
        color: Colors.red
    );
  }
}


