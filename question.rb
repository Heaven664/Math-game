class Question
  attr_accessor :player_name

  def initialize(name)
    self.player_name = name
  end

  def start_question
    num1 = generate_number;
    num2 = generate_number;
    get_answer(num1, num2)
  end

  def generate_number
    rand(1..20)
  end

  def get_answer(num1, num2)
    puts "----- NEW TURN -----"
    puts "#{self.player_name}: What does #{num1} plus #{num2} equal?"
    answer = gets.chomp
    answer.to_i == num1 + num2
  end 

end