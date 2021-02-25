class SnakesLadders

  attr_reader :player_1_turn,
              :player_1_position,
              :player_2_position,
              :board

  def initialize
    @player_1_turn = true
    @player_1_position = nil
    @player_2_position = nil
    @board = array = [*0..100]
  end

  def play(die1, die2)
    if @player_1_turn == true
      player_1s_turn(die1, die2)
    else
      player_2s_turn(die1, die2)
    end
  end

  def player_1s_turn(die1, die2)
    if @player_1_position.nil?
      @player_1_position = (die1 + die2)
    else
      @player_1_position += (die1 + die2)
    end
    if die1 == die2
      if @player_1_position == 2
        land_on_two
      end
    else
      if @player_1_position == 2
        land_on_two
        @player_1_turn = false
      else
        # pretty messy but it can be refactored
        message = print_message(@player_1_position)
        @player_1_turn = false
        message
      end
    end
  end

  def player_2s_turn(die1, die2)
    if @player_2_position.nil?
      @player_2_position = (die1 + die2)
    else
      @player_2_position += (die1 + die2)
    end
    if die1 == die2
      if @player_2_position == 2
        land_on_two
      end
    else
      if @player_2_position == 2
        land_on_two
        @player_1_turn = true
      elsif @player_2_position == 8
          land_on_eight
          message = print_message(@player_2_position)
          @player_1_turn = true
          message
      else
        message = print_message(@player_2_position)
        @player_1_turn = true
        message
      end
    end
  end

  def print_message(player_position)
    if @player_1_turn == true
      "Player 1 is on square #{player_position}"
    else
      "Player 2 is on square #{player_position}"
    end
  end

  def land_on_two
    if @player_1_turn == true
      @player_1_position = 38
      print_message(38)
    else
      @player_2_position = 38
      print_message(38)
    end
  end

  def land_on_eight
    if @player_1_turn == true
      @player_1_position = 31
      print_message(31)
    else
      @player_2_position = 31
      print_message(31)
    end
  end



end
