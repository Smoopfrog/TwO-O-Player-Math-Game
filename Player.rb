class Player
  attr_accessor :name, :lives

  def initialize (name)
    @name = name
    @lives = 3 
  end

  def lose_life
    @lives -= 1
  end

  def game_over
    lives == 0
  end


  def question
    new_question = Question.new
    new_question.ask_question(@name)

    input = $stdin.gets.chomp.to_i

    if new_question.correct_answer(input)
      puts "YES! You are correct"
    else 
      puts "Seriously? No!"
      lose_life
    end
  end
end
