import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,

  ));
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "O cuidado em identificar pontos críticos na adoção de políticas descentralizadoras estende o alcance e a importância dos índices pretendidos.",
    "Por conseguinte, a percepção das dificuldades cumpre um papel essencial na formulação do processo de comunicação como um todo.",
    "Gostaria de enfatizar que a contínua expansão de nossa atividade estende o alcance e a importância das diversas correntes de pensamento.",
    "O incentivo ao avanço tecnológico, assim como a constante divulgação das informações nos obriga à análise das posturas dos órgãos dirigentes com relação às suas atribuições."

  ];

  var _frasegerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _frasegerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          // decoration: BoxDecoration(
          //     border: Border.all(width: 3, color: Colors.amber)
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text( _frasegerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.blueGrey
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  _gerarFrase();
                },
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
