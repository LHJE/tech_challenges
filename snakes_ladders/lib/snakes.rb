class Snakes

  def initialize
    @player_1 = true
    @player_1_position = 0
    @player_2_position = 0
  end

  def play(die1, die2)

    if die1 == die2
      double_turn(die1, die2)

    else
      regular_turn(die1, die2)
    end
  end

end
