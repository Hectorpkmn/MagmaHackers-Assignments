class Grid
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
    @grid.each do |slot,value|
      print slot + "," + value + " "
      print "\n" if (slot == "3") || (slot == "6")
    end
  end

  def receive_choice(choice)
    @grid[choice.to_s] = "[X]"
    puts "Value received was: #{choice}"
#    puts "Value received was: #{@p1NumberChosen}"
  end
end
