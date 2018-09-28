class Grid
  attr_accessor :grid, :players, :current_player, :player1, :player2

  def initialize
    @players = Players.new
    @player1 = "[X]"
    @player2 = "[O]"
    @current_player = @player1
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
    if current_player == player1
      @current_player = player2
    else
      @current_player = player1
    end
  end

  def insert_value_to_grid(coordinate, current_player)
    if grid[coordinate.to_s] == "[F]"
      @grid[coordinate.to_s] = current_player
      switch_player
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
end
