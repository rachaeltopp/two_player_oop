module MathGame

  class Game

    def initialize
      @player1 = Player.new
      @player2 = Player.new
      @current_player = 1
    end

    def loop
      #while loop to continue game as long as both players have > 0 lives
      while @player1.lives > 0 && @player2.lives > 0
        if @current_player == 1
          #start a new turn with player 1
          Turn.new(@player1, @current_player).play
          #set the current player to player 2 
          @current_player = 2
        else
          #start a new turn with player 2
          Turn.new(@player2, @current_player).play
          #set the current player back to player 1
          @current_player = 1
        end
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      end
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end

  end

end