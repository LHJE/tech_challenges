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
              :player_2

  def initialize
    @player_1_turn = true
    @player_1 = Player.new(0)
    @player_2 = Player.new(0)
  end

  def play(die1, die2)
    if @player_1.position == 100 || @player_2.position == 100
      if @player_1.position == 100
        p "Player 1 Wins!"
      else
        p "Player 2 Wins!"
      end
      p "Game over!"
    else
      if @player_1_turn == true
        turn(@player_1, die1, die2)
      else
        turn(@player_2, die1, die2)
      end
    end
  end

  def turn(player, die1, die2)
    player.change_position(die1 + die2)
    if die1 == die2
      win?(player)
    else
      message = win?(player)
      @player_1_turn = !@player_1_turn
      message
    end
  end

  def win?(player)
    if player.position > 100
      player.change_position(-(player.position - 100))
      end_turn(player)
    else
      end_turn(player)
    end
  end

  def end_turn(player)
    where_stopped(player)
    print_message(player.position)
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
      player.set_position(14)
    elsif player.position == 8
      player.set_position(31)
    elsif player.position == 15
      player.set_position(26)
    elsif player.position == 16
      player.set_position(6)
    elsif player.position == 21
      player.set_position(42)
    elsif player.position == 28
      player.set_position(84)
    elsif player.position == 36
      player.set_position(44)
    elsif player.position == 46
      player.set_position(25)
    elsif player.position == 49
      player.set_position(11)
    elsif player.position == 51
      player.set_position(67)
    elsif player.position == 62
      player.set_position(19)
    elsif player.position == 64
      player.set_position(60)
    elsif player.position == 71
      player.set_position(91)
    elsif player.position == 74
      player.set_position(53)
    elsif player.position == 78
      player.set_position(98)
    elsif player.position == 87
      player.set_position(94)
    elsif player.position == 89
      player.set_position(68)
    elsif player.position == 92
      player.set_position(88)
    elsif player.position == 95
      player.set_position(75)
    elsif player.position == 99
      player.set_position(80)
    end
  end

end
