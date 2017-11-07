module MathGame

  class Player

    attr_accessor :lives, :answer

    def initialize
      @lives = 3
      @answer = 0
    end

    def answer
      @ans = $stdin.gets.chomp.to_i 
    end

  end  

end 


