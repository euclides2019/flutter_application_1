import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home ({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int _numPessoas = 0;
  int _numPessoas2 = 0;
  int cont1 = 0;
  int cont2 = 0;
  @override
  Widget build(BuildContext context) {
    
    return    Stack(
      children:[
      Image.asset('images/truco.png',
      fit: BoxFit.cover),
  Row(
    mainAxisAlignment: MainAxisAlignment.center, children:[
    Column(// inclua o widget coluna
    mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [ //adicione um children
        Text(// e inclua um widget
          "Nós: $_numPessoas", //adione um texto
          style: TextStyle(
            color: Colors.white, //cor do texto
            fontWeight: FontWeight.bold),  //configura um texto
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, children:[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                onPressed: (){
                  _changeAlunos(1);
                 },
                child: Text(
                  "+1",
                  style: TextStyle(fontSize: 40, color: Colors.black),
                )),
              ),
              Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
              onPressed: (){
                 _changeAlunos(-1);
              },
              child: Text(
                "-1",
                style: TextStyle(fontSize: 40, color: Colors.black),
                )),
              ),
  
         
       ]),ElevatedButton(
                onPressed: (){
                  _changeAlunos(3);
                 },
                child: Text(
                  "TRUCO",
                  style: TextStyle(fontSize: 40, color: Colors.black),
                )),
       
        Text( // inclua outro widget de texto
          "Vitórias $cont1", //adione um texto
          style: TextStyle(//configure o estilo do texto
            color: Colors.white, //cor do texto
            fontStyle: FontStyle.italic,
            fontSize: 30.0),  //configura um texto
          ),
        
      ],
    ),Column(// inclua o widget coluna
    mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [ //adicione um children
        Text(// e inclua um widget
          "Nós: $_numPessoas2", //adione um texto
          style: TextStyle(
            color: Colors.white, //cor do texto
            fontWeight: FontWeight.bold),  //configura um texto
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, children:[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                onPressed: (){
                  _changeAlunos2(1);
                 },
                child: Text(
                  "+1",
                  style: TextStyle(fontSize: 40, color: Colors.black),
                )),
              ),
              Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
              onPressed: (){
                 _changeAlunos2(-1);
              },
              child: Text(
                "-1",
                style: TextStyle(fontSize: 40, color: Colors.black),
                )),
              ),
  
         
       ]),ElevatedButton(
                onPressed: (){
                  _changeAlunos2(3);
                 },
                child: Text(
                  "TRUCO",
                  style: TextStyle(fontSize: 40, color: Colors.black),
                )),
       
        Text( // inclua outro widget de texto
          "Vitórias $cont2", //adione um texto
          style: TextStyle(//configure o estilo do texto
            color: Colors.white, //cor do texto
            fontStyle: FontStyle.italic,
            fontSize: 30.0),  //configura um texto
          ),
        
      ],
    )

    
          ],
    )
    
  ]);
  }
  void _changeAlunos(int valor){
    setState(() {
      if (_numPessoas < 12){
      _numPessoas += valor;
      }

      if(_numPessoas < 0){
        _numPessoas =0;
      }

      if (_numPessoas >= 12){
      _numPessoas =0;
      _changePontos1(1);
      }
    });
  }
  void _changePontos1(int valor2){
    setState(() {
    cont1 ++;
    });
  }


  void _changeAlunos2(int valor2){
    setState(() {
      if (_numPessoas2 < 12){
      _numPessoas2 += valor2;
      }

      if(_numPessoas2 < 0){
        _numPessoas2 =0;
      }

      if (_numPessoas2 >= 12){
      _numPessoas2 =0;
      _changePontos2(1);
      }
    });
  }
  void _changePontos2(int valor2){
    setState(() {
    cont2 ++;
    });
  }
}

