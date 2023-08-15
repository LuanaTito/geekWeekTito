import 'package:flutter/material.dart';
import 'package:geekweek/cronograma.dart';

import 'package:geekweek/geekweek.dart';

import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const Myapp());
}
class Myapp extends StatefulWidget {
   const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
 

  @override
 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Segoe UI'
      // fontFamily:'SUIGENER',
      ),
      home:  Scaffold(
        
        backgroundColor: Colors.black, // Definindo o fundo preto do Scaffold
        // appBar: AppBar(
        //   toolbarHeight: 80,
        //   title: const Text(
        //     'Geek Week',
        //     style: TextStyle(fontSize: 40),
        //   ),
        //   centerTitle: true,
        //   backgroundColor: const Color.fromARGB(255, 21, 80, 129),
        // ),
        body: Stack(
          children: const [
            Center(
              child: Opacity(
                opacity: 0.5,
                child: Image.file('assets/images/garras.png'),
                //child: Image(image: AssetImage('images/garras.png')),
              ),
            ),
            MainBody(),
          ],
        ),
      ),
    );
  }
}


class MainBody extends StatelessWidget {
 final String instagramUrl =  "https://www.instagram.com/senactito/";

 _launchInstagram() async {
   // ignore: deprecated_member_use
   if (await canLaunch(instagramUrl)) {
     // ignore: deprecated_member_use
     await launch(instagramUrl);
   } else {
     throw 'Não foi possível abrir o link do Instagram';
   }
 }
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double maxWidth = 10000;
    double containerWidth = (screenWidth < maxWidth ? screenWidth : maxWidth);
    double containerWidth2 = (screenWidth < maxWidth ? screenWidth : maxWidth) / 2;
    double screenHeight = MediaQuery.of(context).size.height;
    double maxHeight = 10000;
    double containerHeight = screenHeight < maxHeight ? screenHeight : maxHeight;
    double boxHeight = containerHeight;
    double minBoxHeight2 = containerHeight / 9;
    double minBoxHeight = containerHeight / 35;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: containerWidth,
          height: boxHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: containerWidth2,
                 child: 
               const Image(
                   image: AssetImage('images/6-8.png'),
                ),
              ),
              SizedBox(
                width: containerWidth2,
                child: const Image(
                  image: AssetImage('images/logo.png'),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
               Expanded( // Wrap the third button with Expanded
                child: ElevatedButton(
                  onPressed: () {_launchInstagram();}, 
                  style: const ButtonStyle(
                    maximumSize: MaterialStatePropertyAll(Size(200, 60)),
                    minimumSize: MaterialStatePropertyAll(Size(200, 60)),
                    backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                    side: MaterialStatePropertyAll(BorderSide(width: 3, color: Colors.white)),
                  ),
                  child: const Image(image: AssetImage('images/instagram.png')),
                ),
              ),
               SizedBox(
                height: minBoxHeight,
              ),
              Expanded( // Wrap the first button with Expanded
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const  Crono(),
                      ),
                    );
                  },
                  style: const ButtonStyle(
                    maximumSize: MaterialStatePropertyAll(Size(200, 60)),
                    minimumSize: MaterialStatePropertyAll(Size(200, 60)),
                    backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                    side: MaterialStatePropertyAll(BorderSide(width: 3, color: Colors.white)),
                  ),
                  child: const Image(image: AssetImage('images/calendar-regular-240.png')),
                ),
              ),
              SizedBox(
                height: minBoxHeight,
              ),
              Expanded( // Wrap the second button with Expanded
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Descricao(),
                      ),
                    );
                  },
                  style: const ButtonStyle(
                    maximumSize: MaterialStatePropertyAll(Size(200, 60)),
                    minimumSize: MaterialStatePropertyAll(Size(200, 60)),
                    backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                    side: MaterialStatePropertyAll(BorderSide(width: 3, color: Colors.white)),
                  ),
                  child: const Image(image: AssetImage('images/invader.png')),
                ),
              ),
            
              SizedBox(
                height: minBoxHeight,
              ),
              Image(
                image: const AssetImage('images/senac.png'),
                width: containerWidth,
                height: 120,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
