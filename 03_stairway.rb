def get_random_number_between_1_and_6
    return rand(1..6)
  end
  
  def move_player(current_position, roll_result)
    case roll_result
    when 1
      return [current_position - 1, 0] # [new_position, turns]
    when 5, 6
      return [current_position + 1, 0] # [new_position, turns]
    else
      return [current_position, 0] # [new_position, turns]
    end
  end
  
  def play_game
    position = 0
    turns = 0
    while position < 10
      roll_result = get_random_number_between_1_and_6
      position, _ = move_player(position, roll_result)
      turns += 1
    end
    return turns
  end
  
  def average_finish_time(num_games)
    total_turns = 0
    num_games.times do
      total_turns += play_game
    end
    return total_turns.to_f / num_games
  end
  
  def execute(num_games)
    average_turns = average_finish_time(num_games)
    puts "Nombre moyen de tours pour arriver à la 10ème marche sur #{num_games} parties : #{average_turns}"
  end
  
  # Exécuter avec au moins 100 parties
  execute(100)