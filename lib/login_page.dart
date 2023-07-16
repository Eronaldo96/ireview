// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String passWord = '';

  Widget _body() {
    return Container(
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  child: Center(
                    child: Text(
                      'IReview',
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                ),
                // Container(
                //   child: Image.asset('assets/images/bird_2.jpg'),
                // ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'by: Tia Maria',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 2, // Adicione uma elevação para o efeito de brilho
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email',
                            filled: true,
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 0, 70, 150),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        onChanged: (text) {
                          passWord = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            filled: true,
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 0, 70, 150),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)))),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (email == "eronaldo.marques96@gmail.com" &&
                              passWord == '123') {
                            Navigator.of(context).pushReplacementNamed('/home');
                          }
                        },
                        child: Container(
                            width: double.infinity,
                            child: Text(
                              'Entrar',
                              textAlign: TextAlign.center,
                            )),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20), // Defina o borderRadius desejado
                            ),
                          ),
                          // minimumSize: MaterialStateProperty.all(Size(300, 60)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(
                                  255, 82, 70, 255)), // Defina a cor do botão
                        ),
                      )
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 94, 23, 235),
                Color(0xFF00CCE5), // Cor degradê #00CCE5
              ],
            ),
          ),
        ),
        _body()
      ],
    ));
  }
}
