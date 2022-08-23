
class Question
  def intitialize
    num1, num2
  end

  def sum
    @sum = num1 + num2
  end

  def ask_question
    puts "What does num1 plus num2 equal"
  end

  def correct_answer
    @sum == @input
  end
end