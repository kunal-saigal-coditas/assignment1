class Player {
  String name;
  int score;
  int skill;
  Player({required this.name, required this.score, required this.skill});
}

abstract class Tournament {
  void play() {}
  void displayScore() {}
}

class MatchOne extends Tournament {
  Player playerOne;
  Player playerTwo;
  MatchOne({required this.playerOne, required this.playerTwo});
  @override
  void displayScore() {
    print("Score is ${playerOne.score}");
    print("Score is ${playerTwo.score}");
  }

  @override
  void play() {
    playerOne.score = playerOne.score + playerOne.skill;
    playerTwo.score += playerTwo.skill;
  }
}

void main() {
  MatchOne match1 = MatchOne(
      playerOne: Player(name: "Alex", score: 124, skill: 6),
      playerTwo: Player(name: "Brayn", score: 143, skill: 7));
  match1.displayScore();
  match1.play();
  match1.displayScore();
}
