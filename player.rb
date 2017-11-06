module MathGame

  class Player
    
    attr_accessor :name, :lives
    
    def initialize(name)
      @name = name
      @lives = 3
    end
  
    def wrong
      @lives -= 1
    end
  
    def lose
      @lives == 0
    end
      
  end  

end 


