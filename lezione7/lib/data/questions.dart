import 'package:lezione7/models/question.dart';

const questions = [
  Question(
    'Quali sono i principali blocchi di costruzione delle UI di Flutter?',
    [
      'Widgets',
      'Componenti',
      'Blocchi',
      'Funzioni',
    ],
  ),
  Question('Come vengono costruite le UI di Flutter?', [
    'Combinando widget nel codice',
    'Combinando widget in un editor visuale',
    'Definendo widget nei file di configurazione',
    'Utilizzando XCode per iOS e Android Studio per Android',
  ]),
  Question(
    'Qual è lo scopo di un StatefulWidget?',
    [
      'Aggiornare l\'UI man mano che cambiano i dati',
      'Aggiornare i dati man mano che cambia l\'UI',
      'Ignorare le modifiche ai dati',
      'Renderizzare UI che non dipende dai dati',
    ],
  ),
  Question(
    'Quale widget dovresti cercare di utilizzare più spesso: StatelessWidget o StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Entrambi sono ugualmente buoni',
      'Nessuna delle opzioni precedenti',
    ],
  ),
  Question(
    'Cosa succede se si modificano i dati in uno StatelessWidget?',
    [
      'L\'UI non viene aggiornata',
      'L\'UI viene aggiornata',
      'Viene aggiornato il StatefulWidget più vicino',
      'Vengono aggiornati eventuali StatefulWidget nidificati',
    ],
  ),
  Question(
    'Come dovresti aggiornare i dati all\'interno di StatefulWidgets?',
    [
      'Chiamando setState()',
      'Chiamando updateData()',
      'Chiamando updateUI()',
      'Chiamando updateState()',
    ],
  ),
  Question(
    'Qual è il linguaggio di programmazione principale utilizzato per lo sviluppo con Flutter?',
    [
      'Dart',
      'JavaScript',
      'Python',
      'Java',
    ],
  ),
  Question(
    'Qual è il framework che utilizza Dart per lo sviluppo di applicazioni web?',
    [
      'AngularDart',
      'React',
      'Vue.js',
      'Ember.js',
    ],
  ),
  Question(
    'Qual è l\'ambiente di sviluppo integrato (IDE) raccomandato per lo sviluppo con Flutter?',
    [
      'Visual Studio Code',
      'Android Studio',
      'XCode',
      'Eclipse',
    ],
  ),
  Question(
    'Qual è la funzione di base di MaterialApp in Flutter?',
    [
      'Definire la struttura di base dell\'applicazione',
      'Gestire le richieste HTTP',
      'Creare animazioni complesse',
      'Gestire l\'autenticazione degli utenti',
    ],
  ),
  Question(
    'Qual è il modo consigliato per gestire la navigazione tra le schermate in Flutter?',
    [
      'Utilizzare Navigator',
      'Utilizzare un widget personalizzato',
      'Gestire manualmente la transizione tra le schermate',
      'Utilizzare un controller di navigazione',
    ],
  ),
  Question(
    'Quale metodo viene chiamato quando uno Stateful widget viene inserito nel widget tree?',
    [
      'initState()',
      'build()',
      'dispose()',
      'didUpdateWidget()',
    ],
  ),
  Question(
    'Qual è l\'output della funzione print("Hello, world!") in Dart?',
    [
      'Hello, world!',
      'null',
      'void',
      'Un errore',
    ],
  ),
  Question(
    'Qual è il concetto fondamentale dietro il layout di Flutter?',
    [
      'Widget ad albero',
      'Programmazione imperativa',
      'Modello Vista Controller (MVC)',
      'Oggetti JSON',
    ],
  ),
  Question(
    'Cosa rappresenta il concetto di "hot reload" in Flutter?',
    [
      'L\'aggiornamento istantaneo delle modifiche al codice senza dover riavviare l\'applicazione',
      'La ricompilazione del codice a ogni modifica',
      'L\'applicazione di patch agli errori durante l\'esecuzione',
      'La creazione di versioni di anteprima dell\'applicazione',
    ],
  ),
  Question(
    'Qual è il termine utilizzato per descrivere l\'organizzazione dei widget in Flutter in una struttura gerarchica?',
    [
      'Widget tree',
      'Widget hierarchy',
      'Widget layout',
      'Widget structure',
    ],
  ),
];
