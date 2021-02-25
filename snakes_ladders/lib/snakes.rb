class SnakesLadders

  class Player
    attr_reader :position

    def initialize(position)
      @position = position
    end

    def change_position(amount)
      @position += amount
    end

    def set_position(new_position)
      @position = new_position
    end
  end

  attr_reader :player_1_turn,
              :player_1,
              :player_2,
              :board

  def initialize
    @player_1_turn = true
    @player_1 = Player.new(0)
    @player_2 = Player.new(0)
  end

  def play(die1, die2)
    if @player_1_turn == true
      turn(@player_1, die1, die2)
    else
      turn(@player_2, die1, die2)
    end
  end

  def turn(player, die1, die2)
    if player.position == 0
      player.change_position(die1 + die2)
    else
      player.change_position(die1 + die2)
    end
    if die1 == die2
      where_stopped(player)
      print_message(player.position)
    else
      where_stopped(player)
      print_player_message(player.position)
    end
  end

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

  def where_stopped(player)
    if player.position == 2
      player.set_position(38)
    elsif player.position == 7
      land_on_7(player)
    elsif player.position == 8
      land_on_8(player)
    elsif player.position == 15
      land_on_15(player)
    elsif player.position == 46
      land_on_46(player)
    end
  end

  def land_on_7(player)
    player.set_position(14)
  end

  def land_on_8(player)
    player.set_position(31)
  end

  def land_on_15(player)
    player.set_position(26)
  end

  def land_on_16(player)
    player.set_position(6)
  end

  def land_on_21(player)
    player.set_position(42)
  end

  def land_on_28(player)
    player.set_position(84)
  end

  def land_on_36(player)
    player.set_position(44)
  end

  def land_on_46(player)
    player.set_position(25)
  end

  def land_on_49(player)
    player.set_position(11)
  end

  def land_on_51(player)
    player.set_position(67)
  end

  def land_on_62(player)
    player.set_position(19)
  end

  def land_on_64(player)
    player.set_position(60)
  end

  def land_on_71(player)
    player.set_position(91)
  end

  def land_on_74(player)
    player.set_position(53)
  end

  def land_on_78(player)
    player.set_position(98)
  end

  def land_on_87(player)
    player.set_position(94)
  end

  def land_on_89(player)
    player.set_position(68)
  end

  def land_on_92(player)
    player.set_position(88)
  end

  def land_on_95(player)
    player.set_position(75)
  end

  def land_on_99(player)
    player.set_position(80)
  end



end
