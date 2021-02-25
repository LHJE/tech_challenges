class Snakes

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
        if @player_1_position.nil?
          @player_1_position = (die1 + die2)
        else
          @player_1_position += (die1 + die2)
        end
    end
  end

  def print_message(player_position)
    if @player_1_turn == true
      p "Player 1 is on square #{player_position}"
    else
      p "Player 2 is on square #{player_position}"
    end
  end

  def land_on_two
      @player_1_position = 38
      print_message(38)
  end

  #
  # def play(die1, die2)
  #   if @player_1_turn == true
  #     if @player_1_position.nil?
  #       @player_1_position = [9, (die1 + die2)]
  #     else
  #       if @player_1_position[0] == 6
  #         @player_1_position = [@player_1_position[0], @player_1_position[1] - (die1 + die2)]
  #
  #       end
  #     end
  #     require "pry"; binding.pry
  #     if die1 == die2
  #       if @player_1_position == [9,2]
  #         land_on_two
  #       elsif @player_1_position = [5,3]
  #         land_on_fourty_four
  #       end
  #     else
  #       if @player_1_position = [9,2]
  #         land_on_two
  #         @player_1_turn = false
  #       end
  #     end
  #   end
  # end

end
