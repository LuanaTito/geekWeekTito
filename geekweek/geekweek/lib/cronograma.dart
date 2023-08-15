import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geekweek/legends.dart';

import 'package:geekweek/main.dart';
import 'dart:math';

import 'dias/seg/desenholivre.dart';

class Crono extends StatelessWidget {
  const Crono({Key? key}) : super(key: key);

  get containerWidth => null;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double maxWidth = 10000;
    double containerWidth2 = (screenWidth < maxWidth ? screenWidth : maxWidth);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          leading: SizedBox(
            height: 100,
            width: 10,
            child: Container(
              color: Colors.orange,
            ),
          ),
          toolbarHeight: 100,
          centerTitle: true,
          title: const Text(
            'Programação',
            style: TextStyle(
              fontFamily: 'Sui Generis',
              fontSize: 24,
              color: Colors.black,
            ),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const Fotos(),
                  //   ),
                  // );
                },
                style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(70, 40)),
                    maximumSize: MaterialStatePropertyAll(Size(70, 40)),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.transparent),
                    elevation: MaterialStatePropertyAll(0)),
                child: const Image(
                  image: AssetImage('images/mobiledev.png'),
                ),
              ),
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: "Seg"),
              Tab(text: "Ter"),
              Tab(text: "Qua"),
              Tab(text: "Qui"),
              Tab(text: "Sex"),
              Tab(text: "Sab")
            ],
            indicator: BoxDecoration(
              color: Color.fromRGBO(
                  187, 125, 0, 0.627), // Set the background color to black
            ),
            labelColor: Colors.black, // Set the active tab text color to orange
            unselectedLabelColor: Colors.black,
          ),
        ),
        body: TabBarView(
          children: [
            ListView(children: <Widget>[
              Padding(
                ///inicio dos horarios de seg///
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CronoLegend(),

                        /// link ao dart com area de legendas em legends.dart///
                      ),

                      Container(
                        //horario1
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '21/08/2023 - 09:00-11:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const DesenhoLivre(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              11, 48, 146, 57), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Desenho a mão livre',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: 1º Subsolo S1',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Oficinas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM HORARIO1

                      Container(
                        //horario2
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '21/08/2023 - 09:00-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              41, 99, 255, 100), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Fliperama',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text(
                                            'Local: Térreo - sala de reunião',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Games',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario 2

                      Container(
                        //horario3
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '21/08/2023 - 09:00-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              95, 117, 175, 69), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "Artist's Alley",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: Térreo - corredor',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Apres/Expo',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //fim horario3

                      Container(
                        //horario4
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '21/08/2023 - 12:30-13:00 / 18:00-18:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              11, 48, 146, 57), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: containerWidth2,
                              height: 130,
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          bottom: 20,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15)),
                                          child: Image.network(
                                            'https://picsum.photos/200/',
                                            width: 50,
                                            height: 50,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 20,
                                              bottom: 15,
                                            ),
                                            child: Text(
                                              'Magic-Aprenda a jogar',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1)),
                                              maxLines: 2,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 15,
                                              bottom: 10,
                                            ),
                                            child: Text(
                                                'Local: Térreo - biblioteca',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13,
                                                    color: Colors.white)),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: SizedBox(
                                                width: 100,
                                                child: Text(
                                                  'Officinas',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11,
                                                    color: Colors
                                                        .white, // Use a cor desejada para o texto
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ), //FIM horario 4

                      Container(
                        //horario5
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '21/08/2023 - 19:30-20:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              95, 117, 175, 69), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "Orquestra - Noite de abertura",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: Térreo - atrio',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Apres/Expo',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //Fim horario 5

                      Container(
                        //horario6
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '21/08/2023 - 20:30-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              11, 48, 146, 57), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Workshop desenho',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: Térreo - atrio',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Oficinas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario
                    ],
                  ),
                ),
              ),

              ///FIM dos horarios de seg///
            ]),
            ListView(children: <Widget>[
              Padding(
                ///inicio dos horarios de ter///
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CronoLegend(),

                        /// link ao dart com area de legendas em legends.dart///
                      ),

                      Container(
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '22/08/2023 - 09:00-11:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {}, //horario1
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              11, 48, 146, 57), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Crie seu próprio mutante',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: 1º  S1',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Oficinas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario 1

                      Container(
                        //horario2
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '22/08/2023 - 09:00-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              41, 99, 255, 100), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Fliperama',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text(
                                            'Local: Térreo - sala de Reunião',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Games',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),

                      Container(
                        //horario3
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '22/08/2023 - 09:00-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              95, 117, 175, 69), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "Artist's Alley",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: Térreo - corredor',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Apres/Expo',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //fim horario2

                      Container(
                        //horario4
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '22/08/2023 - 12:30-13:00/18:00-18:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              11, 48, 146, 57), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Magic - Aprenda a jogar',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text(
                                            'Local: Térreo - biblioteca',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Oficinas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario 4

                      Container(
                        //horario5
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '22/08/2023 - 14:00-17:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              41, 99, 255, 100), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Brinquedos opticos',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: Térreo - mesas',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Games',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario5

                      Container(
                        //horario6
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '22/08/2023 - 19:30-20:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              41, 99, 255, 100), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Riot Games',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text(
                                            'Local: Térreo - biblioteca',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Games',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ///FIM dos horarios de ter///
            ]),
            ListView(children: <Widget>[
              Padding(
                ///inicio dos horarios de qua///
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CronoLegend(),

                        /// link ao dart com area de legendas em legends.dart///
                      ),

                      Container(
                        //horario1
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '23/08/2023 - 10:00-11:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              125, 182, 239, 94), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 30,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Conversando sobre tecnologia',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.white),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: Térreo - atrio',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Palestras',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario 1

                      Container(
                        //horario2
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '23/08/2023 - 09:00-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              41, 99, 255, 100), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Fliperama',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text(
                                            'Local: Térreo - sala de reunião',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Games',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario2

                      Container(
                        //horario3
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '23/08/2023 - 09:00-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              95, 117, 175, 69), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "Artist's Alley",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: Térreo - corredor',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Apres/Expo',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //fim horario3

                      Container(
                        //horario4
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '23/08/2023 - 12:30-13:00/18:00-18:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              11, 48, 146, 57), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Magic - Aprenda a jogar',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text(
                                            'Local: Térreo - biblioteca',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Oficinas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario 4

                      Container(
                        //horario5
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '23/08/2023 - 14:00-16:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              11, 48, 146, 57), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Introdução ao desenho digital',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: 1º Subsolo S1',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Oficinas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario 5

                      Container(
                        //horario6
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '23/08/2023 - 14:00-16:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              125, 182, 239, 94), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Drones',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.white),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: Térreo - atrio',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Palestras',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario 6

                      Container(
                        //horario7
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '23/08/2023 - 19:30-20:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              125, 182, 239, 94), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 75,
                                          bottom: 15,
                                          right: 25,
                                        ),
                                        child: Text(
                                          'Inteligência artificial (ferramentas adobe)',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.white),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 0,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: 1º Subsolo S1',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Palestras',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario 7
                    ],
                  ),
                ),
              ),

              ///FIM dos horarios de qua///
            ]),
            ListView(children: <Widget>[
              Padding(
                ///inicio dos horarios de qui///
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CronoLegend(),

                        /// link ao dart com area de legendas em legends.dart///
                      ),

                      Container(
                        //horario1
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '24/08/2023 - 09:00-11:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {}, //horario1
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              11, 48, 146, 57), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Animação frame a frame',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: 1º  S1',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Oficinas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario 1

                      Container(
                        //horario2
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '24/08/2023 - 09:00-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              11, 48, 146, 57), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Magic - construa seu deck',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: Térreo - mesas',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Oficinas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario2

                      Container(
                        //horario3
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '24/08/2023 - 09:00-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              41, 99, 255, 100), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Fliperama',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text(
                                            'Local: Térreo - sala de reunião',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Games',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario3

                      Container(
                        //horario4
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '24/08/2023 - 09:00-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              95, 117, 175, 69), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "Artist's Alley",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: Térreo - corredor',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Apres/Expo',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //fim horario4

                      Container(
                        //horario5
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '24/08/2023 - 12:30-13:00/18:30-19:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              95, 117, 175, 69), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "Desfile Cospobre",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: Térreo - atrio',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Apres/Expo',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //fim horario5

                      Container(
                        //horario6
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '24/08/2023 - 14:00-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              11, 48, 146, 57), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 80,
                                          right: 40,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Desafio Maker: Automatizando um B1',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: 1º Subsolo S1',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Oficinas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario 6

                      Container(
                        //horario7
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '24/08/2023 - 19:30-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              125, 182, 239, 94), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Adobe Substance',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.white),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: 1º Subsolo S1',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Palestras',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario 7
                    ],
                  ),
                ),
              ),

              ///FIM dos horarios de qui///
            ]),
            ListView(children: <Widget>[
              Padding(
                ///inicio dos horarios de sex///
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CronoLegend(),

                        /// link ao dart com area de legendas em legends.dart///
                      ),

                      Container(
                        //horario1
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '25/08/2023 - 09:00-11:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              11, 48, 146, 57), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Oficina de arte final',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: 1º Subsolo S1',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Oficinas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario1

                      Container(
                        //horario2
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '25/08/2023 - 09:00-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              41, 99, 255, 100), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Fliperama',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text(
                                            'Local: Térreo - sala de reunião',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Games',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario2

                      Container(
                        //horario3
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '25/08/2023 - 09:00-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              95, 117, 175, 69), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "Artist's Alley",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: Térreo - corredor',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Apres/Expo',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //fim horario3

                      Container(
                        //horario4
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '25/08/2023 - 11:30-13:30/17:00-19:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              95, 117, 175, 69), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "Cosplay",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: Térreo - atrio',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Apres/Expo',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //fim horario4

                      Container(
                        //horario5
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '25/08/2023 - 09:00-21:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              95, 117, 175, 69), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          "Show de ciência",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: 1º Subsolo 3S',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Apres/Expo',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //fim horario5

                      Container(
                        //horario6
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '25/08/2023 - 12:30-13:00/18:00-18:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              11, 48, 146, 57), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Magic - Aprenda a jogar',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text(
                                            'Local: Térreo - biblioteca',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Oficinas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario6

                      Container(
                        //horario7
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '25/08/2023 - 15:00-16:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              125, 182, 239, 94), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 60,
                                          bottom: 15,
                                          right: 20,
                                        ),
                                        child: Text(
                                          'Mercado de quadrinhos e ilustração',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.white),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: 1º Subsolo 3S',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Palestras',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario 7

                      Container(
                        //horario8
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '25/08/2023 - 16:30-17:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              125, 182, 239, 94), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 30,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Tradução e cultura japonesa',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.white),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: 1º Subsolo S1',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Palestras',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario 8

                      Container(
                        //horario9
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '25/08/2023 - 19:30-22:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              11, 48, 146, 57), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 60,
                                          bottom: 15,
                                          right: 20,
                                        ),
                                        child: Text(
                                          'Criar seu avatar X-Tito: modelagem 3d',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 10,
                                        ),
                                        child: Text('Local: 1º Subsolo S3',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Oficinas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario9
                    ],
                  ),
                ),
              ),

              ///FIM dos horarios de sex///
            ]),
            ListView(children: <Widget>[
              Padding(
                ///inicio dos horarios de sab///
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CronoLegend(),

                        /// link ao dart com area de legendas em legends.dart///
                      ),

                      Container(
                        //horario1
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '26/08/2023 - 09:00-12:00: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              11, 48, 146, 57), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Magic - Aprenda a jogar',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text(
                                            'Local: Térreo - biblioteca',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Oficinas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario1

                      Container(
                        //horario2
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '26/08/2023 - 09:00-16:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              41, 99, 255, 100), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Magic Commander',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text(
                                            'Local: Térreo - biblioteca',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Games',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario2

                      Container(
                        //horario3
                        width: maxWidth,
                        height: 30,
                        color: const Color.fromRGBO(211, 215, 222, 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 4.5,
                            left: 7,
                          ),
                          child: Text(
                            '26/08/2023 - 14:00-16:30: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                              41, 99, 255, 100), // Background color
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Container(
                          width: containerWidth2,
                          height: 130,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      bottom: 20,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.network(
                                        'https://picsum.photos/200/',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          bottom: 15,
                                        ),
                                        child: Text(
                                          'Magic Pauper',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 10,
                                        ),
                                        child: Text(
                                            'Local: Térreo - biblioteca',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Games',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11,
                                                color: Colors
                                                    .white, // Use a cor desejada para o texto
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ), //FIM horario3
                    ],
                  ),
                ),
              ),

              ///FIM dos horarios de sab///
            ]),
          ],
        ),
        bottomNavigationBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(19.0),
                topRight: Radius.circular(19.0),
              ),
            ),
            child: BottomAppBar(
              color: Colors.transparent,
              elevation: 0,
              child: SizedBox(
                height: 80,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Myapp()));
                  },
                  icon: const Icon(
                    Icons.home,
                    size: 70,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
