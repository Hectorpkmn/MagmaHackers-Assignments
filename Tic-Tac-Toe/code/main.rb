=begin

Rules
- Two players represented with X and O
- First time the game is played, X starts
- Each player alternate turns to put a mark in the board on any available slot
- The game ends when either one of the players matches three marks in a horizontal, vertical or diagonal row or there are no more moves available
- Once the game finishes, players are asked if they want to play again. If they do, the player who lost the previous match starts.
- In case of a draw, the player who did the second-to-last movement starts

Variables
- game_status
    game_start
    game_continues
    game_won_by_p1
    game_won_by_p2
    game_draw
- player_turn
    p1_turn ('X')
    p2_turn ('O')
- turn
    turn 0, to turn 8
- last_game_result
    first_game
    lg_player1_lost
    lg_player2_lost
    lg_draw_by_player1
    lg_draw_by_player2
- board_grid
        ["1,1","1,2","1,3",
        "2,1","2,2","2,3",
        "3,1","3,2","3,3"]
- board_grid Hash values:
        [
        available || X || O => "1,1"
        available || X || O => "1,2"
        ...
        available || X || O => "3,3"
        ]

Triggers
  Game is run for the first time == last_game_result = first_game

    When iteration find one of the following:

  Horizontal match
    - "1,1" && "1,2" && "1,3" have value X  = game_won_by_p1
    - "1,1" && "1,2" && "1,3" have value O  = game_won_by_p2

    - "2,1" && "2,2" && "2,3" have value X  = game_won_by_p1
    - "2,1" && "2,2" && "2,3" have value O  = game_won_by_p2

    - "3,1" && "3,2" && "3,3" have value X  = game_won_by_p1
    - "3,1" && "3,2" && "3,3" have value O  = game_won_by_p2

  Vertical match
    - "1,1" && "2,1" && "3,1" have value X  = game_won_by_p1
    - "1,1" && "2,1" && "3,1" have value O  = game_won_by_p2

    - "1,2" && "2,2" && "3,2" have value X  = game_won_by_p1
    - "1,2" && "2,2" && "3,2" have value O  = game_won_by_p2

    - "1,3" && "2,3" && "3,3" have value X  = game_won_by_p1
    - "1,3" && "2,3" && "3,3" have value O  = game_won_by_p2

  Diagonal match
    - "1,1" && "2,2" && "3,3" have value X  = game_won_by_p1
    - "1,1" && "2,2" && "3,3" have value O  = game_won_by_p2

    - "1,3" && "2,2" && "3,1" have value X  = game_won_by_p1
    - "1,3" && "2,2" && "3,1" have value O  = game_won_by_p2

  Turn 8 is reached == game_status = game_draw

#-------------------------------
    Pseudocode

Game is open
  set game as first game
  set Player 1 starts

Game starts
  Grid is displayed
  Iteration is started until a match is created or turn 8 is reached
    starting player chooses slot
    following player chooses slot
    following player chooses slot
    game ends
    game asks if wnat to keep playing
      If yes then check values and start a new game plus
      If no then game ends

=end

print "Welcome to Tic Tac Toe game"
