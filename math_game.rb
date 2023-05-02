=begin
1)Game class
   This class will start the game, manage turns, give summary and announce winner
    Methods:
      - start_game (start game loop)
      - lose_life
      - turn_summary (correct or incorrect)
      - current_score (lives comparison)
      - switch_roles 
      - announce_winner
    Data:
      - Total lives
      - Player 1
      - Player 2
      - player_asking
      - player_answering

2)Player class
   This class will store player data and perform player specific actions 
   Methods: 
    - is_alive?
    - get_lives
  Data:
    - lives
    - name

3)Question class
   This class will store single question data and perform question methods ()
    Methods:
    - start_question
    - generate_number
    - ask_question
    - get_answer
    - eval_answer
=end
