import 'dart:io';
import 'dart:math';

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
    default:  
      return "Quit";
      break;
  }
}

String getComputerMove() {
  Random rand = new Random();
  int move = rand.nextInt(3);  
  
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

String whoWon(String playerMove, String computerMove) {
  if (playerMove == computerMove) { 
    return "Tie";
  } else if (playerMove == "Bato" && computerMove == "Gunting") {
    return "You Win!";
  } else if (playerMove == "Gunting" && computerMove == "Papel") {
    return "You Win!";
  } else if (playerMove == "Papel" && computerMove == "Bato") {
    return "You Win!";
  } else {  
    return "Computer Wins!";
  }
}

void main() {
  while(true) {  
    String playerMove = getPlayerMove();
    
    if (playerMove == "Quit") {
      return;
    }
    
    print("You- $playerMove");
    String computerMove = getComputerMove();
    print("Bot- $computerMove");
    print(whoWon(playerMove, computerMove));
    print("");
  }
}
