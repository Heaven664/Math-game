require './question'

class Game
  attr_accessor :player1, :player2, :player_asking, :player_answering, :game_ongoing

  def initialize(player1, player2)
    self.player1 = player1
    self.player2 = player2
    self.player_asking = player1
    self.player_answering = player2
    self.game_ongoing = true
  end

  def start_game
    while game_ongoing do
      question = Question.new(self.player_asking.name)
      answer = question.start_question
      turn_summary(answer)
      switch_roles
    end
  end

  def switch_roles
    i = self.player_asking
    self.player_asking = self.player_answering
    self.player_answering = i
  end

  def turn_summary(answer)
    if (answer)
      "#{self.player_asking}: YES! You are correct!"
    else
      "#{self.player_asking}: Seriously? No!"
      self.player_answering.lose_life
    end

    if(!self.player_answering.is_alive?) 
      return announce_winner(self.player_asking)
    end
    puts "#{self.player1.name}: #{player1.lives}/3 vs #{self.player2.name}: #{player2.lives}/3 "
  end

  def announce_winner(player)
    puts "#{player.name} wins with a score #{player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    self.game_ongoing = false
  end
end