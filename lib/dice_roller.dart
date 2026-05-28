import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int topDice = 1;      // Player 1
  int bottomDice = 1;   // Player 2
  String? gameResult;

  // Player 1 dice
  void rollTopDice() {
    setState(() {
      topDice = randomizer.nextInt(6) + 1;
      gameResult = null;   // boshidan
    });
  }

  // Player 2 dice
  void rollBottomDice() {
    setState(() {
      bottomDice = randomizer.nextInt(6) + 1;
      _checkWinner();
    });
  }

  void _checkWinner() {
    if (topDice > bottomDice) {
      gameResult = "Player 1 Wins!";
    } else if (bottomDice > topDice) {
      gameResult = "Player 2 Wins!";
    } else {
      gameResult = "Draw";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //PLAYER 1
          SizedBox(
            width: 250,
            height: 75,
            child: TextButton(
              onPressed: rollTopDice,
              style: TextButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              child: Transform.rotate(
                angle: pi,
                child: const Text(
                  "Player 1",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          // Player 1 dice
          Image.asset(
            'assets/images/dice-$topDice.png',
            width: 200,
            height: 200,
          ),

          const SizedBox(height: 60),

          // NATIJA JOYI 
          SizedBox(
            height: 90,                  
            child: gameResult != null
                ? Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.75),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      gameResult!,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: gameResult == "Draw"
                            ? Colors.yellow
                            : (gameResult == "Player 1 Wins!" 
                                ? Colors.orangeAccent 
                                : Colors.lightBlueAccent),
                      ),
                    ),
                  )
                : const SizedBox(),         
          ),

          const SizedBox(height: 40),

          //  PLAYER 2 
          // Player 2 dice
          Image.asset(
            'assets/images/dice-$bottomDice.png',
            width: 200,
            height: 200,
          ),

          const SizedBox(height: 15),

          // Player 2
          SizedBox(
            width: 250,
            height: 75,
            child: TextButton(
              onPressed: rollBottomDice,
              style: TextButton.styleFrom(
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              child: const Text(
                "Player 2",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}