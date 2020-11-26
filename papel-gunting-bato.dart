import 'dart:io';
import 'dart:math';

String getPlayerMove() {
  print("Papel, Gunting, Bato! What's your Pick? (Q for Quit)"); 
  String selection = stdin.readLineSync();
  
  if (selection == "BATO" || selection== "bato" || selection== "Bato"){
      return "Bato";
  }
  else if(selection=="GUNTING" || selection == "gunting" || selection == "Gunting"){
      return "Gunting";
  }
  else if(selection=="PAPEL" || selection == "papel" || selection == "Papel"){
      return "Papel";
  }  
  else{
     print("Invalid input.");
     exit(0);
  }
}

String getComputerMove() {
  Random rand = new Random();
  int move = rand.nextInt(3);  
  
  if(move==0){
      return "Bato";
  }
  else if(move==1){
      return "Papel";
  }
  else{
      return "Gunting";
  }
}


void main() {
    
 int playerscore=0;
 int compscore=0; 
 print("PAPEL-GUNTING-BATO GAME.");
 print("How many rounds do you want to play?");
 int roundCount= int.parse(stdin.readLineSync());

  for(int i=1; i<=roundCount; i++) {  
    String round = i.toString(); 
    
    print("\nRound " + round);
    String playerMove = getPlayerMove();
    String computerMove = getComputerMove();
    print("You- $playerMove");
    print("Bot- $computerMove");
     
      if (playerMove == computerMove) { 
        print ("Result: Its a tie!");
      } else if (playerMove == "Bato" && computerMove == "Gunting") {
          playerscore+=1;
        print("Result: You Win!:)\n");
      } else if (playerMove == "Gunting" && computerMove == "Papel") {
        playerscore+=1;
        print("Result: You Win!:)");
      } else if (playerMove == "Papel" && computerMove == "Bato") {
        playerscore+=1;
        print("Result: You Win!:)");
      } else {  
        compscore+=1;
        print("Result: You lose.:( Computer Wins!");
      }
  }
    
      print("-----------------------------------");
      print("You: $playerscore Bot: $compscore");
      if(playerscore==compscore){
          print("Overall: Its a tie!");
      }
      else if(playerscore>compscore){
          print("Overall: You win.:)");
      }
      else{
          print("Overall: You lose.:(");
      }
}
