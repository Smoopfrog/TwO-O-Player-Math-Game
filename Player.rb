class Player (name)
  def initialize 
    @lives = 3 
  end

  def lose_life
    @lives--
  end

  def question
    new_question = new.question(num1,num2)
    new_question.ask_question
    if new_question.correct_answer
      print "YES! You are correct"
    else 
      print "Seriously? No!"
      lose_life
    end
  end
end
