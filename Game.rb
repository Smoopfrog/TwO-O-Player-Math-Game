class Question
  def intitialize
    num1, num2
  end

  def sum
    sum = num1 + num2
  end

  def ask_question
    print "What does num1 plus num2 equal"

  def correct_answer
    sum == input
end

class Game
  def initialize 
    @player1 = Player.new
    @player2 = Player.new
    @current player = @player1
  end
  
  def start 
    puts 'hello'
  end
  
  def switch_players 

  end

  def game_over
    if lives=0
  end

  def show_scores
    print "P1: P1.lives vs P2: P2.lives"
  end 

  def check_scores
    if player.game_over
      winner(other-player)

  def winner(player)
    print "Player? wins with a score of ?/3"
    print '--------GAME-OVER--------'
    end
  end 

  def turn 
    player1.question
    check_scores
    show_scores
    print "----- NEW TURN -----"
    player2.question
    check_scores
    show_scores
    print "----- NEW TURN -----"
    turn
end
