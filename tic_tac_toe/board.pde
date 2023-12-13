int[] cell = new int[9];
public void winComputer(){
  if(cell[0] == 2 && cell[1] == 2 && cell[2] == 2){
    println("You lost!" + "\n" + "Game will now close.");
    exit();
  }
  else if(cell[3] == 2 && cell[4] == 2 && cell[5] == 2){
    println("You lost!" + "\n" + "Game will now close.");
    exit();
  }
  else if(cell[6] == 2 && cell[7] == 2 && cell[8] == 2){
    println("You lost!" + "\n" + "Game will now close.");
    exit();
  }
  else if(cell[0] == 2 && cell[3] == 2 && cell[6] == 2){
    println("You lost!" + "\n" + "Game will now close.");
    exit();
  }
  else if(cell[1] == 2 && cell[4] == 2 && cell[7] == 2){
    println("You lost!" + "\n" + "Game will now close.");
    exit();
  }
  else if(cell[2] == 2 && cell[5] == 2 && cell[8] == 2){
    println("You lost!" + "\n" + "Game will now close.");
    exit();
  }
  else if(cell[0] == 2 && cell[4] == 2 && cell[8] == 2){
    println("You lost!" + "\n" + "Game will now close.");
    exit();
  }
  else if(cell[2] == 2 && cell[4] == 2 && cell[6] == 2){
    println("You lost!" + "\n" + "Game will now close.");
    exit();
  }
}
public void winPlayer(){
  if(cell[0] == 1 && cell[1] == 1 && cell[2] == 1){
    println("You Won!" + "\n" + "Game will now close.");
    exit();
  }
  else if(cell[3] == 1 && cell[4] == 1 && cell[5] == 1){
    println("You Won!" + "\n" + "Game will now close.");
    exit();
  }
  else if(cell[6] == 1 && cell[7] == 1 && cell[8] == 1){
    println("You Won!" + "\n" + "Game will now close.");
    exit();
  }
  else if(cell[0] == 1 && cell[3] == 1 && cell[6] == 1){
    println("You Won!" + "\n" + "Game will now close.");
    exit();
  }
  else if(cell[1] == 1 && cell[4] == 1 && cell[7] == 1){
    println("You Won!" + "\n" + "Game will now close.");
    exit();
  }
  else if(cell[2] == 1 && cell[5] == 1 && cell[8] == 1){
    println("You Won!" + "\n" + "Game will now close.");
    exit();
  }
  else if(cell[0] == 1 && cell[4] == 1 && cell[8] == 1){
    println("You Won!" + "\n" + "Game will now close.");
    exit();
  }
  else if(cell[2] == 1 && cell[4] == 1 && cell[6] == 1){
    println("You Won!" + "\n" + "Game will now close.");
    exit();
  }
  else {
    println("The game is still in progress.");
  }
}
public void keyPressed() {
  if(!userPlayed){
    switch (key) {
      case '0':
        if(cell[0] > 0){
          println("A shape has already been placed there, please pick another cell to play in.");
        }  else{
          drawCircle(width/6, height/6);
          cell[0] = 1;
          userPlayed = true;
          winPlayer();
          computerPlay();
        }
        break;
      case '1':
        if(cell[1] > 0){
          println("A shape has already been placed there, please pick another cell to play in.");
        }  else{
          drawCircle(width/2, height/6);
          cell[1] = 1;
          userPlayed = true;
          winPlayer();
          computerPlay();
        }
        break;
      case '2':
        if(cell[2] > 0){
          println("A shape has already been placed there, please pick another cell to play in.");
        }  else{
          drawCircle(width/1.2, height/6);
          cell[2] = 1;
          userPlayed = true;
          winPlayer();
          computerPlay();
        }
        break;
      case '3':
        if(cell[3] > 0){
          println("A shape has already been placed there, please pick another cell to play in.");
        }  else{
          drawCircle(width/6, height/2);
          cell[3] = 1;
          userPlayed = true;
          winPlayer();
          computerPlay();
        }
        break;
      case '4':
        if(cell[4] > 0){
          println("A shape has already been placed there, please pick another cell to play in.");
        }  else{
          drawCircle(width/2, height/2);
          cell[4] = 1;
          userPlayed = true;
          winPlayer();
          computerPlay();
        }
        break;
      case '5':
        if(cell[5] > 0){
          println("A shape has already been placed there, please pick another cell to play in.");
        }  else{
          drawCircle(width/1.2, height/2);
          cell[5] = 1;
          userPlayed = true;
          winPlayer();
          computerPlay();
        }
        break;
      case '6':
        if(cell[6] > 0){
          println("A shape has already been placed there, please pick another cell to play in.");
        }  else{
          drawCircle(width/6, height/1.2);
          cell[6] = 1;
          userPlayed = true;
          winPlayer();
          computerPlay();
        }
        break;
      case '7':
        if(cell[7] > 0){
          println("A shape has already been placed there, please pick another cell to play in.");
        }  else{
          drawCircle(width/2, height/1.2);
          cell[7] = 1;
          userPlayed = true;
          winPlayer();
          computerPlay();
        }
        break;
      case '8':
        if(cell[8] > 0){
          println("A shape has already been placed there, please pick another cell to play in.");
        }  else{
          drawCircle(width/1.2, height/1.2);
          cell[8] = 1;
          userPlayed = true;
          winPlayer();
          computerPlay();
        }
        break;
      default:
        println("The key you pressed is not a number between 0 and 8, please enter a valid number");
        break;
    }
  }
}
public void computerPlay() {
  if(userPlayed){
      int move;
      do {
        move = (int) random(9);
      } while (cell[move] > 0);
      float x = (move % 3) * width / 3 + width / 6;
      float y = (move / 3) * height / 3 + height / 6;
      float offset = width / 6;
      drawCross(x - offset, y - offset, x + offset, y + offset, x - offset, y + offset, x + offset, y - offset);
      cell[move] = 2;
      winComputer();
  }
  userPlayed = false;
}
public void initialComputerPlay() {
  int move;
  do {
    move = (int) random(9);
  } while (cell[move] > 0);
  float x = (move % 3) * width / 3 + width / 6;
  float y = (move / 3) * height / 3 + height / 6;
  float offset = width / 6;
  drawCross(x - offset, y - offset, x + offset, y + offset, x - offset, y + offset, x + offset, y - offset);
  cell[move] = 2;
  winComputer();
}
