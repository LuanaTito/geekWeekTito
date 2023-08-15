import 'package:flutter/material.dart';

import 'package:geekweek/main.dart';

class Fifa extends StatelessWidget{
  const Fifa({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
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
title: const Text('Descricao das atividades',style: TextStyle(fontSize:32,color: Colors.black,fontFamily: 'Sui Generis'),maxLines: 2,textAlign: TextAlign.center,),
       actions: <Widget>[
        Padding(padding: const EdgeInsets.only(left: 20),
        child:  ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const CronogramaPage(),
                    //   ),
                    // );
                  },
                  style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(70, 40)),
                    maximumSize: MaterialStatePropertyAll(Size(70, 40)),
                    backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                    
                    elevation: MaterialStatePropertyAll(0)
                  ),
                  child: const Image(image: AssetImage(''),fit: BoxFit.cover),
                ), )
       
       ],
      ),
      body: const SingleChildScrollView(
        child:DescBody(), ),
       bottomNavigationBar: PreferredSize(
  preferredSize: const Size.fromHeight(80),
  child: Container(
    decoration: const BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25.0),
        topRight: Radius.circular(25.0),
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
          icon: const Icon(Icons.home, size: 70,color: Colors.black,),
        ),
      ),
    ),
  ),
),
    );
  }
}
class DescBody extends StatelessWidget{
  const DescBody ({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
     double screenWidth = MediaQuery.of(context).size.width;
    double maxWidth = 10000;
    double containerWidth = (screenWidth < maxWidth ? screenWidth : maxWidth);
    double containerWidth2 = (screenWidth < maxWidth ? screenWidth : maxWidth) / 2;
    double screenHeight = MediaQuery.of(context).size.height;
    double maxHeight = 10000;
    double containerHeight = screenHeight < maxHeight ? screenHeight : maxHeight;
    double boxHeight = containerHeight;
    double minBoxHeight2 = containerHeight / 4;
    double minBoxHeight = containerHeight / 35;
    return Container(
      padding: const EdgeInsets.all(40),
      width: containerWidth,
      height: containerHeight,
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('Campeonato de Fifa', 
          style: TextStyle(fontSize: 35, fontFamily: 'Sui Generis'),textAlign: TextAlign.center,),
          SizedBox(
            width: containerWidth,
            height: minBoxHeight2,
            child:Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.grey,
  ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: const Image(image: AssetImage('images/FIFA-jogo.jpg'), fit: BoxFit.cover),
  ),
)
),

        SizedBox(
              width: containerWidth,
              child: Row(
                children: [
        Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Row(
            children: const [
        Text(
          'Local: Laboratório 44',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Sui Generis'),
        ),
        SizedBox(width: 20), // Adicione um espaço entre as Texts se necessário
       
      ],
    ),
  ],
)

    ],
  ),
),


          SizedBox(
  width: containerWidth,
  child: Row(
    children: const [
      ],
  ),
),

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('O desafio é entre os melhores jogadores, mostre sua maestria nos controles e dispute partidas eletrizantes em busca da supremacia. Prepare-se para vivenciar cada chute, cada drible e cada gol como se fossem reais. O campo virtual se torna o palco de verdadeiros campeões. Venha e junte-se ao Campeonato de FIFA - onde a glória espera por você!', style: TextStyle(fontSize: 22, fontFamily: 'Sui Generis'),),
              Padding(padding: EdgeInsets.only(top: 8)),
            ],
          )
         
        ],
      ),
    );
  }
}