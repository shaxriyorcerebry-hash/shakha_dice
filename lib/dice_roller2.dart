// import 'package:flutter/material.dart';
// import 'dart:math';

// final randomizer = Random();

// class DiceRoller extends StatefulWidget{
//   const DiceRoller({super.key});

// @override
//   State<StatefulWidget> createState() {
//     return _DiceRollerState();
//   }
// }
// class _DiceRollerState extends State<DiceRoller> {

//   var currentDiceRoll = 2;
// void rolldice(){
//   setState(() {
//     currentDiceRoll = randomizer.nextInt(6)+1;
//   });
// }


// @override
//   Widget build(context) {
//     return Center(
//   child: Column(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       Image.asset(
//         'assets/images/dice-$currentDiceRoll.png',
        
//         width: 200,
//         height: 200,
//       ),
//       Padding(padding: EdgeInsets.only(bottom: 20),),
       
//       SizedBox(
//         width: 190, 
//         height: 60, 
//         child: TextButton(
//           onPressed: rolldice,
//           style: TextButton.styleFrom(
//             backgroundColor: Colors.deepOrange,
//             foregroundColor: Colors.white,
//             textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight(1000),),
//           ),
//           child: const Text("Roll dice"),
//         ),
//       ),
//     ],
//   ),
// );
    
//   }

// }
  
