import 'package:flutter/material.dart';

class ResultadoScreen extends StatelessWidget {
  final int pontos;

  ResultadoScreen(this.pontos);

  String _obterMensagem() {
    if (pontos < 5) {
      return 'Precisa estudar mais, meu amigo. Confio no seu potencial!';
    } else if (pontos >= 5 && pontos <= 11) {
      return 'Você consegue melhorar. Confio que você irá vencer!';
    } else {
      return 'Um gênio dos conhecimentso gerais, hein? Você é bom demais!';
    }
  }

  String _obterEmoji() {
    if (pontos < 5) {
      return 'assets/bad-review.png'; // Substitua com o caminho do emoji triste
    } else if (pontos >= 5 && pontos <= 11) {
      return 'assets/calm.png'; // Substitua com o caminho do emoji calmo
    } else {
      return 'assets/happy.png'; // Substitua com o caminho do emoji feliz
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizzify',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pontuação Final:',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              '$pontos pontos',
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                _obterMensagem(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              _obterEmoji(),
              width: 60,
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
