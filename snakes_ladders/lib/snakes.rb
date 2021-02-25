class SnakesLadders

  class Player
    attr_reader :position

    def initialize(position)
      @position = position
    end
  end

  attr_reader :player_1_turn,
              :player_1_position,
              :player_2_position,
              :board

  def initialize
    @player_1_turn = true
    @player_1 = Player.new(0)
    @player_2 = Player.new(0)
    @board = array = [*0..100]
  end

  def play(die1, die2)
    if @player_1_turn == true
      turn(@player_1, die1, die2)
    else
      turn(@player_2, die1, die2)
    end
  end

  def turn(player, die1, die2)
    require "pry"; binding.pry
    if player.position.nil?
      player.position = (die1 + die2)
    else
      player.position += (die1 + die2)
    end
    if die1 == die2
      if player.position == 2
        land_on_2(player.position)
      elsif player.position == 46
        land_on_46(player.position)
      end
    else
      if player.position == 2
        land_on_2(player.position)
        @player_1_turn = false
      else
        print_player_message(player.position)
      end
    end
  end

  # def player_2s_turn(player_position, die1, die2)
  #   if player_position.nil?
  #     @player_2_position = (die1 + die2)
  #   else
  #     @player_2_position += (die1 + die2)
  #   end
  #   if die1 == die2
  #     if @player_2_position == 2
  #       land_on_2(player_position)
  #     end
  #   else
  #     if @player_2_position == 2
  #       land_on_2(player_position)
  #     elsif @player_2_position == 8
  #       land_on_8(player_position)
  #       print_player_message(@player_2_position)
  #     elsif @player_2_position == 46
  #       land_on_46(player_position)
  #       print_player_message(@player_2_position)
  #     else
  #       print_player_message(@player_2_position)
  #     end
  #   end
  # end

  def print_player_message(position)
    message = print_message(position)
    @player_1_turn = !@player_1_turn
    message
  end

  def print_message(player_position)
    if @player_1_turn == true
      "Player 1 is on square #{player_position}"
    else
      "Player 2 is on square #{player_position}"
    end
  end

  def land_on_2(player_position)
    require "pry"; binding.pry
    player_position = 38
    print_message(38)
  end

  def land_on_8(player_position)
    if @player_1_turn == true
      @player_1_position = 31
    else
      @player_2_position = 31
    end
    print_message(31)
  end

  def land_on_46(player_position)
    if @player_1_turn == true
      @player_1_position = 25
    else
      @player_2_position = 25
    end
    print_message(25)
  end



end
