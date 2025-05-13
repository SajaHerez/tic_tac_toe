# Tic-Tac-Toe Console Application - Dart Assessment
## Task Description:

Develop a simple console-based Tic-Tac-Toe game in Dart. The game should allow two players to take turns making moves on a 3x3 grid until one player wins or the game ends in a draw. The application should provide an interactive and user-friendly experience.

## How to run
### Clone the repository:
git clone https://github.com/SajaHerez/tic_tac_toe.git
cd tic_tac_toe
### Run the game
dart .\lib\tic_tac_toe.dart

## Requirements:

### Game Board:  
 Implement a 3x3 grid to represent the Tic-Tac-Toe board.
Display the current state of the board after each move.
### Players: 
Allow two players to take turns, one representing 'X' and the other 'O'.
 Prompt players to input their moves using the console.
### Input Validation:
Validate user inputs to ensure they are within the valid range (1-9) and correspond to an empty cell on the board.
Display an error message for invalid inputs and prompt the player to enter a valid move.
### Winning Conditions:
Determine and check for winning conditions after each move.
Declare the winner if there are three consecutive 'X' or 'O' markers in a row, column, or diagonal.
End the game if a winner is declared.
### Draw Condition:
Declare the game as a draw if all cells are filled, and no player has achieved a winning condition.
### Game Loop:
Implement a loop to allow the game to continue until there is a winner or a draw.
Provide an option to restart the game after it concludes.
### Code Structure:
Organize your code into functions or classes to enhance readability and maintainability.
Use proper naming conventions for variables and functions.
### Documentation:
Include comments or documentation within your code to explain the logic and functionality.
Bonus (Just a bonus, don't hesitate yourself if you can't):
Implement a simple AI opponent to play against the human player.
Allow players to choose their markers ('X' or 'O') at the beginning of the game.

