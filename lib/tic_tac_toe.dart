import 'dart:io';

List<String> board = List.generate(9, (index) => ' ');

void main() {
  String currentPlayer = 'X';

  while (true) {
    printBoard();
    int move = getMove(currentPlayer);
    board[move] = currentPlayer;

    if (checkWinner(currentPlayer)) {
      printBoard();
      print('Player $currentPlayer wins!');
      break;
    } else if (!board.contains(' ')) {
      printBoard();
      print('It\'s a draw!');
      break;
    }

    currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
  }
}

void printBoard() {
  print('''
 ${board[0]} | ${board[1]} | ${board[2]}
-----------
 ${board[3]} | ${board[4]} | ${board[5]}
-----------
 ${board[6]} | ${board[7]} | ${board[8]}
''');
}

int getMove(String player) {
  while (true) {
    stdout.write('Player $player, enter your move (1-9): ');
    String? input = stdin.readLineSync();
    int? pos = int.tryParse(input ?? '');
    if (pos != null && pos >= 1 && pos <= 9 && board[pos - 1] == ' ') {
      return pos - 1;
    }
    print('Invalid input. Please try again.');
  }
}

bool checkWinner(String player) {
  List<List<int>> wins = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], // Rows
    [0, 3, 6], [1, 4, 7], [2, 5, 8], // Columns
    [0, 4, 8], [2, 4, 6]             // Diagonals
  ];
  return wins.any((pattern) =>
      pattern.every((index) => board[index] == player));
}
