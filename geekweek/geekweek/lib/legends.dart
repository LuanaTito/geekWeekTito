import 'package:flutter/material.dart';
import 'package:geekweek/main.dart';

// class CronoLegend extends StatelessWidget{
//   const CronoLegend ({Key?key}):super(key: key);
//   @override
//   Widget build(BuildContext context){
//     return Row(///Inicio da area de legendas///
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 10, right: 4.0),
//             child: Container(
//               width: 20,
//               height: 20,
//               decoration: BoxDecoration(color: const Color.fromRGBO(11, 48, 146, 1),
//               borderRadius: BorderRadius.circular(10)),
//             ),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Text('Palestras', style: TextStyle(fontSize: 14),)
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 10, right: 4.0),
//             child: Container(
//               width: 20,
//               height: 20,
//               decoration: BoxDecoration(color: const Color.fromRGBO(41, 99, 255, 100),
//               borderRadius: BorderRadius.circular(10)),
//             ),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Text('Games', style: TextStyle(fontSize: 14),)
//             ],
//           ),
    
//             Padding(
//             padding: const EdgeInsets.only(left: 10, right: 4.0),
//             child: Container(
//               width: 20,
//               height: 20,
//               decoration: BoxDecoration(color: const Color.fromRGBO(95, 117, 175, 69),
//               borderRadius: BorderRadius.circular(10)),
//             ),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Text('Apresentação', style: TextStyle(fontSize: 14),)
//             ],
//           ),
    
//             Padding(
//             padding: const EdgeInsets.only(left: 10, right: 4.0),
//             child: Container(
//               width: 20,
//               height: 20,
//               decoration: BoxDecoration(color: const Color.fromRGBO(11, 48, 146, 57),
//               borderRadius: BorderRadius.circular(10)),
//             ),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Text('Oficinas', style: TextStyle(fontSize: 14),)
//             ],
//           ),  
//         ],
//       );

//   }///FIM da area de legendas///               
// }
  
              

class CronoLegend  extends StatelessWidget{
  const CronoLegend ({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context){ 
    return Row(///Inicio da area de legendas///
        mainAxisAlignment: MainAxisAlignment.center,
        children: [       
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: const Color.fromRGBO(125, 182, 239, 94),
                  borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text('Palestras', style: TextStyle(fontSize: 13,color: Colors.white),),
                  )           
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: const Color.fromRGBO(41, 99, 255, 100),
                  borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text('Games', style: TextStyle(fontSize: 13,color: Colors.white),),
                  )           
                ),
              ],
            ),
          ), 
          
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: const Color.fromRGBO(95, 117, 175, 69),
                  borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text('Apres/Expo', style: TextStyle(fontSize: 13,color: Colors.white),),
                  )           
                ),
              ],
            ),
          ), 

          Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: const Color.fromRGBO(11, 48, 146, 57),
                  borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text('Oficinas', style: TextStyle(fontSize: 13,color: Colors.white),),
                  )           
                ),
              ],
            ),
          ),   
        ],
      );

  }///FIM da area de legendas///               
}