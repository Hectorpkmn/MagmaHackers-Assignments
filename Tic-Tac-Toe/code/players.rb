class Players
  def player_1_moves
    puts "\n\nTurn of the player ONE\n"
    print "please choose a free slot by typing its number: "
    p1NumberChosen = gets.to_i
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
    p1NumberChosen
  end

  def player_1_envia_coodernada
    coordinate = player_1_moves
    puts "El valor a enviar es: #{coordinate}"
    coordinate
  end

=begin
  def player_2_moves()
    puts "\n\nTurn of the player TWO\n"
    print "please choose a free slot by typing its number: "
    p2NumberChosen = gets.to_i
    invalidCounter = 0
    until (p2NumberChosen != 0) && (p2NumberChosen <= 9)
      if invalidCounter == 5
        p2NumberChosen = 0
        break
      else
      puts "\nThat's not a valid input."
      invalidCounter += 1
      puts "invalidCounter: #{invalidCounter}"
      print "\nplease type a valid number: "
      p2NumberChosen = gets.to_i
      end
    end
    puts "Your selected slot number was: #{p2NumberChosen}"
    return p2NumberChosen
  end
=end
end
