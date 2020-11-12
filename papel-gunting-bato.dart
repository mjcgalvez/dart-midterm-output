import 'dart:io';
import 'dart:math';

/// Get a player move via keyboard input
/// If the player does not enter a valid move
/// return "Quit" so that the main game loop
/// knows to end the game
String getPlayerMove() {
  print("Papel, Gunting, Bato! What's your Pick?");
  String selection = stdin.readLineSync();
  
  switch (selection) {
    case "Bato":
      return "Bato";
      break;
    case "Gunting":
      return "Gunting";
      break;
    case "Papel":
      return "Papel";
      break;
    default:  //if anything but R, P, or S
      return "Quit";
      break;
  }
}

/// Return a random move in the form of a string of either
/// "Rock", "Paper", or "Scissors"
String getComputerMove() {
  Random rand = new Random();
  int move = rand.nextInt(3);  //random int from 0 to 2
  
  switch (move) {
    case 0:
      return "Bato";
      break;
    case 1:
      return "Papel";
      break;
    case 2:
      return "Gunting";
      break;
    default:
      break;
  }
}

/// Determine if the player or the computer won
/// by comparing [playerMove] to [computerMove]
String whoWon(String playerMove, String computerMove) {
  if (playerMove == computerMove) {  //if the same, it's a tie
    return "Tie";
  } else if (playerMove == "Bato" && computerMove == "Gunting") {
    return "You Win!";
  } else if (playerMove == "Gunting" && computerMove == "Papel") {
    return "You Win!";
  } else if (playerMove == "Papel" && computerMove == "Bato") {
    return "You Win!";
  } else {  //if it's not a tie and you didn't win, computer won
    return "Computer Wins!";
  }
}

void main() {
  while(true) {  //main game loop (qusi infinite loop)
    String playerMove = getPlayerMove();
    
    if (playerMove == "Quit") {
      return;  //returning from void function exits it
    }
    
    print("You- $playerMove");
    String computerMove = getComputerMove();
    print("Bot- $computerMove");
    print(whoWon(playerMove, computerMove));
    print("");
  }
}
