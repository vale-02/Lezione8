class Question {
  final String question;
  final List<String> answers;

  const Question(this.question, this.answers);
  List<String> getShuffledAnswers() {
    final shuffledAnswers = List.of(answers); // copia, a noi serve l'originale
    shuffledAnswers
        .shuffle(); // funziuona con final perché non cambia la lista in memoria
    return shuffledAnswers;
  }
}
