
import 'package:flutter/material.dart';
import 'package:geekweek/main.dart';

class Desenvolvedores extends StatelessWidget{
  const Desenvolvedores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(      
     backgroundColor: Colors.black,
      appBar:AppBar(
        backgroundColor: Colors.orange,
        leading: SizedBox(
          height: 100,
          width: 0,
          child: Container(
            color: Colors.orange,
          ),
        ),
        toolbarHeight: 100,
        
        title:const Center(
          child:  Text('Desenvolvedores',style: TextStyle(
          fontSize:19,color: Colors.black, fontFamily: 'Sui Generis',fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,),
        ),

       actions: <Widget>[
        
         ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Myapp(),
                      ),
                    );
                  },
                  style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(70, 40)),
                    maximumSize: MaterialStatePropertyAll(Size(70, 40)),
                    backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                    
                    elevation: MaterialStatePropertyAll(0)
                  ),
                  child: const Image(image: AssetImage('images/mobiledev.png'),),
                ), 
       
       ],
      ),
      
      body: Stack(
          children: const [
            Center(
              child: Opacity(
                opacity: 0.5,
                child: Image(image: AssetImage('images/garras.png')),
              ),
            ),
            SingleChildScrollView(
              child:   DesenvolvedoresBody(),
            )
          ,
          
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
          icon: const Icon(Icons.home, size: 70,color: Colors.black,),
        ),
      ),
    ),
  ),
),    
    );
  }
}

class DesenvolvedoresBody extends StatelessWidget {
  
  const DesenvolvedoresBody({Key? key}):super(key: key);
  
  @override
  Widget build(BuildContext context){
      double screenWidth = MediaQuery.of(context).size.width;
    double maxWidth = 10000;
    double containerWidth = (screenWidth < maxWidth ? screenWidth : maxWidth)/1.2;
    // responsivo height
    double screenHeight = MediaQuery.of(context).size.height;
    double maxHeight = 10000;
    double containerHeight = screenHeight < maxHeight ? screenHeight : maxHeight;
    double boxHeight = containerHeight/5;
    double minBoxHeight = containerHeight/8;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(19),
              alignment: Alignment.topCenter,
              width: containerWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
               ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Define o raio das bordas
                  child: Image.network(
                    'https://picsum.photos/190/',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover, // Para ajustar a imagem ao tamanho com bordas arredondadas
                  ),
                ),

                   Container(
                    // padding: const EdgeInsets.only(left: 19, bottom: 50),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('Pedro Baki',style: TextStyle(fontSize: 19),),
                      
                      const Text('(Desenvolvedor-Deploy)',style: TextStyle(fontSize: 13),),
                      const Padding(padding: EdgeInsets.only(bottom: 8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
              
                          Image(image: AssetImage('images/linkedin-square-logo-240.png'),width: 19,height: 19,),
                          Text('@linkedin ',style: TextStyle(fontSize: 13),),
                          
                        ],
                      ),
                      const Text('@linkedin ',style: TextStyle(fontSize: 13),),
                     
                    ],
                   ),
                   
                   )
                ],
              ),
            ),
            Center(
              child:  SizedBox(
                        height: 2,
                        width: containerWidth,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
            ),
                        Container(
              padding: const EdgeInsets.all(19),
              alignment: Alignment.topCenter,
              width: containerWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Container(
                    // padding: const EdgeInsets.only(left: 19, bottom: 50),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('Vinícius Bernardes',style: TextStyle(fontSize: 19),),
                      
                      const Text('(Desenvolvedor)',style: TextStyle(fontSize: 13,),),
                      const Padding(padding: EdgeInsets.only(bottom: 8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
              
                          Image(image: AssetImage('images/linkedin-square-logo-240.png'),width: 19,height: 19,),
                          Text('@linkedin ',style: TextStyle(fontSize: 13),),
                          
                        ],
                      ),
                      const Text('@linkedin ',style: TextStyle(fontSize: 13),),
                     
                    ],
                   ),
                   
                   ),               
                   ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Define o raio das bordas
                  child: Image.network(
                    'https://picsum.photos/190/',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover, // Para ajustar a imagem ao tamanho com bordas arredondadas
                  ),
                ),
                ],
                
              ),
              
            ),
            Center(
              child:  SizedBox(
                        height: 2,
                        width: containerWidth,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
            ),Container(
              padding: const EdgeInsets.all(19),
              alignment: Alignment.topCenter,
              width: containerWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
               ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Define o raio das bordas
                  child: Image.network(
                    'https://picsum.photos/190/',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover, // Para ajustar a imagem ao tamanho com bordas arredondadas
                  ),
                ),

                   Container(
                    // padding: const EdgeInsets.only(left: 19, bottom: 50),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('Matheus Luz',style: TextStyle(fontSize: 19),),
                      
                      const Text('(Web Desenvolvedor)',style: TextStyle(fontSize: 13),),
                      const Padding(padding: EdgeInsets.only(bottom: 8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
              
                          Image(image: AssetImage('images/linkedin-square-logo-240.png'),width: 19,height: 19,),
                          Text('@linkedin ',style: TextStyle(fontSize: 13),),
                          
                        ],
                      ),
                      const Text('@linkedin ',style: TextStyle(fontSize: 13),),
                     
                    ],
                   ),
                   
                   )
                ],
              ),
            ),
            Center(
              child:  SizedBox(
                        height: 2,
                        width: containerWidth,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
            ),
                        Container(
              padding: const EdgeInsets.all(19),
              alignment: Alignment.topCenter,
              width: containerWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Container(
                    // padding: const EdgeInsets.only(left: 19, bottom: 50),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('Rafael Molina',style: TextStyle(fontSize: 19),),
                      
                      const Text('(Desenvolvedor)',style: TextStyle(fontSize: 13),),
                      const Padding(padding: EdgeInsets.only(bottom: 8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
              
                          Image(image: AssetImage('images/linkedin-square-logo-240.png'),width: 19,height: 19,),
                          Text('@linkedin ',style: TextStyle(fontSize: 13),),
                          
                        ],
                      ),
                      const Text('@linkedin ',style: TextStyle(fontSize: 13),),
                     
                    ],
                   ),
                   
                   ),               
                   ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Define o raio das bordas
                  child: Image.network(
                    'https://picsum.photos/190/',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover, // Para ajustar a imagem ao tamanho com bordas arredondadas
                  ),
                ),
                ],
                
              ),
              
            ),
            Center(
              child:  SizedBox(
                        height: 2,
                        width: containerWidth,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
            ),Container(
              padding: const EdgeInsets.all(19),
              alignment: Alignment.topCenter,
              width: containerWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
               ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Define o raio das bordas
                  child: Image.network(
                    'https://picsum.photos/190/',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover, // Para ajustar a imagem ao tamanho com bordas arredondadas
                  ),
                ),

                   Container(
                    // padding: const EdgeInsets.only(left: 19, bottom: 50),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('Ananda',style: TextStyle(fontSize: 19),),
                      
                      const Text('(Designer)',style: TextStyle(fontSize: 13),),
                      const Padding(padding: EdgeInsets.only(bottom: 8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
              
                          Image(image: AssetImage('images/linkedin-square-logo-240.png'),width: 19,height: 19,),
                          Text('@linkedin ',style: TextStyle(fontSize: 13),),
                          
                        ],
                      ),
                      const Text('@linkedin ',style: TextStyle(fontSize: 13),),
                     
                    ],
                   ),
                   
                   )
                ],
              ),
            ),
            Center(
              child:  SizedBox(
                        height: 2,
                        width: containerWidth,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
            ),
                        Container(
              padding: const EdgeInsets.all(19),
              alignment: Alignment.topCenter,
              width: containerWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Container(
                    // padding: const EdgeInsets.only(left: 19, bottom: 50),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('Andressa',style: TextStyle(fontSize: 19),),
                      
                      const Text('(Designer)',style: TextStyle(fontSize: 13),),
                      const Padding(padding: EdgeInsets.only(bottom: 8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
              
                          Image(image: AssetImage('images/linkedin-square-logo-240.png'),width: 19,height: 19,),
                          Text('@linkedin ',style: TextStyle(fontSize: 13),),
                          
                        ],
                      ),
                      const Text('@linkedin ',style: TextStyle(fontSize: 13),),
                     
                    ],
                   ),
                   
                   ),               
                   ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Define o raio das bordas
                  child: Image.network(
                    'https://picsum.photos/190/',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover, // Para ajustar a imagem ao tamanho com bordas arredondadas
                  ),
                ),
                ],
                
              ),
              
            ),
            Center(
              child:  SizedBox(
                        height: 2,
                        width: containerWidth,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
            ),Container(
              padding: const EdgeInsets.all(19),
              alignment: Alignment.topCenter,
              width: containerWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
               ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Define o raio das bordas
                  child: Image.network(
                    'https://picsum.photos/190/',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover, // Para ajustar a imagem ao tamanho com bordas arredondadas
                  ),
                ),

                   Container(
                    // padding: const EdgeInsets.only(left: 19, bottom: 50),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('João Vitor',style: TextStyle(fontSize: 19),),
                      
                      const Text('(Escrivão)',style: TextStyle(fontSize: 13),),
                      const Padding(padding: EdgeInsets.only(bottom: 8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
              
                          Image(image: AssetImage('images/linkedin-square-logo-240.png'),width: 19,height: 19,),
                          Text('@linkedin ',style: TextStyle(fontSize: 13),),
                          
                        ],
                      ),
                      const Text('@linkedin ',style: TextStyle(fontSize: 13),),
                     
                    ],
                   ),
                   
                   )
                ],
              ),
            ),
            Center(
              child:  SizedBox(
                        height: 2,
                        width: containerWidth,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
            ),
                        Container(
              padding: const EdgeInsets.all(19),
              alignment: Alignment.topCenter,
              width: containerWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Container(
                    // padding: const EdgeInsets.only(left: 19, bottom: 50),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('Vitor',style: TextStyle(fontSize: 19),),
                      
                      const Text('(Escrivão)',style: TextStyle(fontSize: 13),),
                      const Padding(padding: EdgeInsets.only(bottom: 8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
              
                          Image(image: AssetImage('images/linkedin-square-logo-240.png'),width: 19,height: 19,),
                          Text('@linkedin ',style: TextStyle(fontSize: 13),),
                          
                        ],
                      ),
                      const Text('@linkedin ',style: TextStyle(fontSize: 13),),
                     
                    ],
                   ),
                   
                   ),               
                   ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Define o raio das bordas
                  child: Image.network(
                    'https://picsum.photos/190/',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover, // Para ajustar a imagem ao tamanho com bordas arredondadas
                  ),
                ),
                ],
                
              ),
              
            ),
            Center(
              child:  SizedBox(
                        height: 2,
                        width: containerWidth,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
            ),Container(
              padding: const EdgeInsets.all(19),
              alignment: Alignment.topCenter,
              width: containerWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
               ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Define o raio das bordas
                  child: Image.network(
                    'https://picsum.photos/190/',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover, // Para ajustar a imagem ao tamanho com bordas arredondadas
                  ),
                ),

                   Container(
                    // padding: const EdgeInsets.only(left: 19, bottom: 50),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('Leonardo ',style: TextStyle(fontSize: 19),),
                      
                      const Text('(Jesus)',style: TextStyle(fontSize: 13),),
                      const Padding(padding: EdgeInsets.only(bottom: 8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
              
                          Image(image: AssetImage('images/linkedin-square-logo-240.png'),width: 19,height: 19,),
                          Text('@linkedin ',style: TextStyle(fontSize: 13),),
                          
                        ],
                      ),
                      const Text('@linkedin ',style: TextStyle(fontSize: 13),),
                     
                    ],
                   ),
                   
                   )
                ],
              ),
            ),
            Center(
              child:  SizedBox(
                        height: 2,
                        width: containerWidth,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
            ),
            Center(
              child:  SizedBox(
                        height: 2,
                        width: containerWidth,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
            ),
             
          ],
        );
  }
  }