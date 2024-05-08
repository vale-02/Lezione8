import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            // crea dei widget popolandoli con i dostri dati
            (data) {
              MaterialColor colorChoice() {
                if (data['risposta corretta'] ==
                    data['risposta dell\'utente']) {
                  return Colors.green;
                }
                return Colors.red;
              }

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colorChoice(),
                    ),
                    child: Center(
                      child: Text(
                        ((data['indice_domanda'] as int) + 1).toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['domanda'] as String,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          data['risposta corretta'] as String,
                          style: const TextStyle(
                              backgroundColor: Colors.green,
                              color: Colors.white),
                        ),
                        Text(
                          data['risposta dell\'utente'] as String,
                          style: const TextStyle(fontStyle: FontStyle.italic),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(), // è un iterabile, ci serve una lista di Widget
        ),
      ),
    );
  }
}
