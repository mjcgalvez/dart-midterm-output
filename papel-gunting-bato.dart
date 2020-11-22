import 'dart:io';
import 'dart:math';

String getPlayerMove() {
  print("Papel, Gunting, Bato! What's your Pick? (Q for Quit)"); 
  String selection = stdin.readLineSync();
  
  if (selection == "BATO" || selection== "bato" || selection== "Bato"){
      return "Bato";
  }
  else if(selection=="GUNTING" || selection == "gunting" || selection == "Gunting"){
      return "Gunting :scissor:";
  }
  else if(selection=="PAPEL" || selection == "papel" || selection == "Papel"){
      return "Papel";
  }  
  else{
      return "Quit";
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
