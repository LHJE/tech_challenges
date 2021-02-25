class Snakes
  require 'matrix'

  attr_reader :player_1_turn,
              :player_1_position,
              :player_2_position,
              :board

  def initialize
    @player_1_turn = true
    @player_1_position = nil
    @player_2_position = nil
    @board = Matrix[[100,99,98,97,96,95,94,93,92,91], [81,82,83,84,85,86,87,88,89,90], [80,79,78,77,76,75,74,73,72,71], [61,62,63,64,65,66,67,68,69,70], [60,59,58,57,56,55,54,53,52,51], [41,42,43,44,45,46,47,48,49,50], [40,39,38,37,36,35,34,33,32,31], [21,22,23,24,25,26,27,28,29,30], [20,19,18,17,16,15,14,13,12,11], [1,2,3,4,5,6,7,8,9,10]]
  end

  def print_message(player_position)
    if @player_1_turn == true
      p "Player 1 is on square #{@board[player_position[0],player_position[1]]}"
    else
      p "Player 2 is on square #{@board[player_position[0],player_position[1]]}"
    end
  end

  def land_on_two
      @player_1_position = [6,2]
      print_message([6,2])
  end

  def land_on_fourty_four
      @player_1_position = [5,3]
      print_message([5,3])
  end

  def play(die1, die2)
    if @player_1_turn == true
      if @player_1_position.nil?
        @player_1_position = [9, (die1 + die2)]
      end
      require "pry"; binding.pry
      if die1 == die2
        if @player_1_position == [9,2]
          land_on_two
        elsif @player_1_position = [5,3]
          land_on_fourty_four
        end
      else
        if @player_1_position = [9,2]
          land_on_two
          @player_1_turn = false
        end
      end
    end
  end

end
