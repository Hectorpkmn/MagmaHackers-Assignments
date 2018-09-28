class Players
  attr_accessor :piece

  def ask_for_coordinate
    print "\nplease choose a free slot by typing its number: "
    p1NumberChosen = gets.to_i
  end

=begin
  def player_1_moves
    p1NumberChosen = ask_for_coordinate
    invalidCounter = 0
    until (p1NumberChosen != 0) && (p1NumberChosen <= 9)
      if invalidCounter == 5
        p1NumberChosen = 0
        break
      else
      puts "\nThat's not a valid input."
      invalidCounter += 1
      puts "invalidCounter: #{invalidCounter}"
      print "\nplease type a valid number: "
      p1NumberChosen = gets.to_i
      end
    end
    puts "Your selected slot number was: #{p1NumberChosen}"
    ask_for_coordinate
  end
=end
end
