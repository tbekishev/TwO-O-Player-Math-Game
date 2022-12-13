class Question
  attr_accessor :question, :answer

  def initialize
    number1 = rand(1..5)
    number2 = rand(1..5)
    @question = "What does #{number1} plus #{number2} equal?"
    @answer = number1 + number2
  end
end