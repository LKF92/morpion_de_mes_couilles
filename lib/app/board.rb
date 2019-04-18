require 'bundler'
Bundler.require

require_relative 'boardcase'
require_relative './player'


class Board
  attr_accessor :boardcase_array
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @boardcase_array =[]
    9.times {|i| @boardcase_array << BoardCase.new(i)}
  end

  def play_turn(player)
    puts "Au tour de #{player.name},quelle case choisis-tu ?"
    case_choice = @boardcase_array[gets.chomp.to_i]
    case_choice.symbol = player.symbol
  end

  def victory?
    player1_victory = ["X", "X", "X"]
    player2_victory = ["O", "O", "O"]
    ## on compare les cas de victoire (horizontale + diagonale)
    ## en créant un array (avec .map),
    ## que l'on compare aux symboles de notre Board

    case player1_victory
      ### Rows
    when [0, 1, 2].map {|i|boardcase_array[i].symbol}
      return "#{player1.name} A GAGNÉ !"
    when [3, 4, 5].map {|i|boardcase_array[i].symbol}
      return "#{player1.name} A GAGNÉ !"
    when [6, 7, 8].map {|i|boardcase_array[i].symbol}
      return "#{player1.name} A GAGNÉ !"
      ### diagonale
    when [0, 4, 8].map {|i|boardcase_array[i].symbol}
      return "#{player1.name} A GAGNÉ !"
    when [2, 4, 6].map {|i|boardcase_array[i].symbol}
      return "#{player1.name} A GAGNÉ !"
      ### Columns
    when [0, 3, 6].map {|i|boardcase_array[i].symbol}
      return "#{player1.name} A GAGNÉ !"
    when [1, 4, 7].map {|i|boardcase_array[i].symbol}
      return "#{player1.name} A GAGNÉ !"
    when [2, 5, 8].map {|i|boardcase_array[i].symbol}
      return "#{player1.name} A GAGNÉ !"
    end

    case player2_victory
      ### Rows
    when [0, 1, 2].map {|i|boardcase_array[i].symbol}
      return "#{player2.name} A GAGNÉ !"
    when [3, 4, 5].map {|i|boardcase_array[i].symbol}
      return "#{player2.name} A GAGNÉ !"
    when [6, 7, 8].map {|i|boardcase_array[i].symbol}
      return "#{player2.name} A GAGNÉ !"
      ### diagonale
    when [0, 4, 8].map {|i|boardcase_array[i].symbol}
      return "#{player2.name} A GAGNÉ !"
    when [2, 4, 6].map {|i|boardcase_array[i].symbol}
      return "#{player2.name} A GAGNÉ !"
      ### Columns
    when [0, 3, 6].map {|i|boardcase_array[i].symbol}
      return "#{player2.name} A GAGNÉ !"
    when [1, 4, 7].map {|i|boardcase_array[i].symbol}
      return "#{player2.name} A GAGNÉ !"
    when [2, 5, 8].map {|i|boardcase_array[i].symbol}
      return "#{player2.name} A GAGNÉ !"
    end
  end
end
