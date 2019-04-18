require 'bundler'
Bundler.require

require_relative 'player'
require_relative 'board'
require_relative 'boardcase'
# require 'view/show'

class Game
  attr_accessor :player1, :player2, :game_status, :current_player, :current_game

  ### CREATION DES PLAYERS
  def initialize
    puts "Hello joueur 1 ! Quel est ton nom ? "
    @player1 = Player.new(gets.chomp, "X")
    puts "Hello joueur 2 ! Quel est ton nom ? "
    @player2 = Player.new(gets.chomp, "O")
    @game_status = "on going"
    @current_player = player1
    ### on instancie les deux players.
    @current_game = Board.new(player1, player2)
    binding.pry
  end

  def display_board
    ### Première ligne du tableau
    current_game.boardcase_array[0].symbol == " " ? (print current_game.boardcase_array[0].case) : (print current_game.boardcase_array[0].symbol)
    print " | "
    current_game.boardcase_array[1].symbol == " " ? (print current_game.boardcase_array[1].case) : (print current_game.boardcase_array[1].symbol)
    print " | "
    current_game.boardcase_array[2].symbol == " " ? (print current_game.boardcase_array[2].case) : (print current_game.boardcase_array[2].symbol)
    puts "\n---------"
    ### Deuxième ligne du tableau
    current_game.boardcase_array[3].symbol == " " ? (print current_game.boardcase_array[3].case) : (print current_game.boardcase_array[3].symbol)
    print " | "
    current_game.boardcase_array[4].symbol == " " ? (print current_game.boardcase_array[4].case) : (print current_game.boardcase_array[4].symbol)
    print " | "
    current_game.boardcase_array[5].symbol == " " ? (print current_game.boardcase_array[5].case) : (print current_game.boardcase_array[5].symbol)
    puts "\n---------"
    ### Troisième ligne du tableau
    current_game.boardcase_array[6].symbol == " " ? (print current_game.boardcase_array[6].case) : (print current_game.boardcase_array[6].symbol)
    print " | "
    current_game.boardcase_array[7].symbol == " " ? (print current_game.boardcase_array[7].case) : (print current_game.boardcase_array[7].symbol)
    print " | "
    current_game.boardcase_array[8].symbol == " " ? (print current_game.boardcase_array[8].case) : (print current_game.boardcase_array[8].symbol)
  end

  def turn
    display_board

  end
end



Game.new