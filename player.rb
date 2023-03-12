class Player
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def new_question
    new_question = Question.new
    puts "#{name}: What does #{new_question.num1} plus #{new_question.num2} equal?"
    print '>'
    @userchoice = $stdin.gets.chomp
    if new_question.check_answer(@userchoice.to_i)
      puts 'Yes! You are correct.'
    else
      puts 'Seriously? No!'
      lose_life
    end
  end

end
