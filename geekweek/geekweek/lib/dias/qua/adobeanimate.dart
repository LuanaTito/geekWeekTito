import 'package:flutter/material.dart';

import 'package:geekweek/main.dart';

class AdobeAnimate extends StatelessWidget{
  const AdobeAnimate({Key?key}):super(key: key);

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
title: const Text('Descrição das atividades',style: TextStyle(fontSize:30,color: Colors.black,),maxLines: 2,textAlign: TextAlign.center,),
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
                  child: const Image(image: AssetImage('images/mobiledev.png'),),
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
          const Text('Adobe Animate: Animação digital quadro a quadro', style: TextStyle(fontSize: 35),textAlign: TextAlign.center,),
          SizedBox(
            width: containerWidth,
            height: minBoxHeight2,
            child: Container(
              
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.grey,
              
            ),
            child:
            const Image(image: AssetImage('images/mobiledev.png')),
            ),
          ),
          SizedBox(
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:const [
                 Text('Local: ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),) ,
                 Text('1S', style: TextStyle(fontSize: 20),) ,
                   
                 
                 ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const[
                 Text('Data:', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),) ,
                   Text('24/08/23', style: TextStyle(fontSize: 20),) ,
            ],)
              ],
            )
          ),
      Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  const  [
              Padding(padding: EdgeInsets.only(top: 30)),
              Text('Conheça os princípios da animação quadro a quadro através da ferramenta Adobe Animate e com a utilização de mesas digitalizadoras.', style: TextStyle(fontSize: 22),), 
            ],
          )
         
        ],
      ),
    );
  }
}