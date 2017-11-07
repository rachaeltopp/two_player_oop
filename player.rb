module MathGame

  class Player

    attr_accessor :lives

    def initialize
      @lives = 3
    end

    def answer
      $stdin.gets.chomp.to_i 
    end

  end  

end 


