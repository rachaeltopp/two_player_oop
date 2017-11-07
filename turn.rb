module MathGame

  class Turn

    def initialize(playerX, current_player)
      @playerX = playerX
      @current_player = current_player
    end

    def numbers
      [rand(1...20), rand(1...20)]
    end

    def play
      num1 = numbers[0]
      num2 = numbers[1]
      puts "----- NEW TURN -----"
      puts "Player #{@current_player}: what is #{num1} plus #{num2}?"
      if @playerX.answer != num1 + num2
        puts "Seriously? No!"
        @playerX.lives -= 1
      else
        puts "YES! You are correct."
      end
    end

  end

end
