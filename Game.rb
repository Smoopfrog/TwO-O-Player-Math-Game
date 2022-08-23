class Game
  def initialize (name) 
    @name = name
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end
  
  def start 
    puts 'New game started.'
    turn
  end
  

  def show_scores
    puts "Player1: #{@player1.lives}/3 vs Player2: #{@player2.lives}/3"
  end 

  def check_scores
    if @player1.game_over
      winner(@player2)
    elsif @player2.game_over
      winner(@player1)
    end
  end

  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts '--------GAME-OVER--------'
    puts 'Goodbye!'
    exit(0)
  end 

  def turn
    @player1.question
    check_scores
    show_scores
    puts "----- NEW TURN -----"
    @player2.question
    check_scores
    show_scores
    puts "----- NEW TURN -----"
    turn
  end
end
