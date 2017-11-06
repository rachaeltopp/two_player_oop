module MathGame

  class Question

    def num1 
      @num1 = rand(1...20)
    end

    def num2
      @num2 = rand(1...20)
    end

    def input_correct(input)
      input == (@num1 + @num2)
    end
    
  end

end