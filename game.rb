class Game
  def initialize(name)
    @name = name
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  def start
    puts "New Game! Welcome #{@player_1.name} and #{@player_2.name}"
    turn
  end

  def show_stats
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
  end

  def winner(player)
    puts "#{player.name} wins with the score of #{player.lives}/3"
    puts "Game over"
    exit(0)
  end

  def check_score
    if @player_1.lives == 0
      winner(@player_2)  
    elsif @player_2.lives == 0
      winner(@player_1)  
    end
  end

  def turn
    @player_1.new_question
    check_score
    @player_2.new_question
    check_score
    show_stats
    puts 'New Turn'
    turn
  end
end