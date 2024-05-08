import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});
  final Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset('assets/unimol_logo.png', width: 300.0),
          ),
          // Image.asset(
          //   'assets/logomonocromo.png',
          //   width: 300.0,
          //   color: Color.fromARGB(120, 255, 255, 255),
          // ),
          const SizedBox(height: 40.0),
          const Text(
            'App Unimol per i Quiz!',
            style: TextStyle(
              fontSize: 24.0,
              //             fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 60.0),
          OutlinedButton.icon(
            onPressed: switchScreen,
            icon: const Icon(Icons.play_arrow),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              side: const BorderSide(color: Colors.white),
              foregroundColor: Colors.white,
            ),
            label: const Text('Inizia a giocare!'),
          ),
        ],
      ),
    );
  }
}
