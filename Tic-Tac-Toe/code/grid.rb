class Grid
  attr_accessor :grid, :players, :current_player, :player1, :player2, :horizontal_match, :vertical_match, :diagonal_match

  def initialize
    @players = Players.new
    @player1 = "[X]"
    @player2 = "[O]"
    @current_player = @player1
    @horizontal_match = [["1","2","3"],["4","5","6"],["7","8","9"]]
    @vertical_match = [["1","4","7"],["2","5","8"],["3","6","9"]]
    @diagonal_match = [["1","5","9"],["3","5","7"]]
  end

  def create_grid
    @grid = {
      "1" => "[F]",
      "2" => "[F]",
      "3" => "[F]",
      "4" => "[F]",
      "5" => "[F]",
      "6" => "[F]",
      "7" => "[F]",
      "8" => "[F]",
      "9" => "[F]"
    }
  end

  def draw_grid
    grid.each do |slot,value|
      print slot + "," + value + " "
      print "\n" if (slot == "3") || (slot == "6")
    end
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def insert_value_to_grid(coordinate, current_player)
    if grid[coordinate.to_s] == "[F]"
      @grid[coordinate.to_s] = current_player
      switch_player #
      puts "Value received was: #{coordinate}"
    else
      puts "The slot has been taken, try again"
    end
  end

  def receive_choice
    coordinate = players.ask_for_coordinate
    if coordinate >= 1 && coordinate <= 9
      insert_value_to_grid(coordinate, current_player)
    else
      puts "Value is not valid\n"
    end
  end

  def validate_game_winner
    horizontal = check_horizotal_match
    vertical = check_vertical_match
    diagonal = diagonal_match

    print "h: #{horizontal}, v: #{vertical}, d: #{diagonal}"
    puts
    horizontal || vertical || diagonal
  end

  def check_horizotal_match
    horizontal_match.each do |array_match|
      winner = check_player_victory(array_match)
    end
  end

  def check_vertical_match
    vertical_match.each do |array_match|
      winner = check_player_victory(array_match)
    end
  end

  def check_diagonal_match
    diagonal_match.each do |array_match|
      winner = check_player_victory(array_match)
      winner
    end
  end

  def check_player_victory(array_match)
    puts "|before if: #{current_player}| "
    puts "grid position: #{@grid}"
    gets.chomp
    if @grid[array_match[0]] == @current_player && @grid[array_match[1]] == @current_player && @grid[array_match[2]] == @current_player
      print "|true? if| "
      return true
    else
      print "|false? else| "
      return false
    end
  end

  def who_is_winner?
    current_player
  end
end
