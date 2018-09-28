class Players
  attr_accessor :piece

  def ask_for_coordinate
    print "\n\nplease choose a free slot by typing its number: "
    p1NumberChosen = gets.to_i
  end
end
