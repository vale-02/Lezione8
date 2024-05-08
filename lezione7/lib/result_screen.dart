import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lezione7/data/questions.dart';
import 'package:lezione7/first_screen.dart';
import 'package:lezione7/question_summary.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({
    super.key,
    required this.chosenAnswers,
  });
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'indice_domanda': i,
          'domanda': questions[i].question,
          'risposta corretta': questions[i].answers[0],
          'risposta dell\'utente': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final nunTotalDomande = questions.length;
    final numRisposteCorrette = summaryData
        .where((element) =>
            element['risposta corretta'] == element['risposta dell\'utente'])
        .length;
    return SizedBox(
      width: double.infinity, // allargamento massimo
      child: Container(
        margin: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hai risposto correttamente a $numRisposteCorrette domande su $nunTotalDomande',
              style: GoogleFonts.lobster(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FirstScreen(),
                  ),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.replay_sharp,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Ricomincia',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
