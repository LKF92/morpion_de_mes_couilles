require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/game'
require 'app/board'
require 'app/boardcase'
# require 'view/show'
#
# class Application
# attr_accessor
#
# ### CREATION DES PLAYERS
#   def perform
#     puts "Hello joueur 1 ! Quel est ton nom ? "
#     player1 = Player.new(gets.chomp, "X")
#
#     puts "Hello joueur 2 ! Quel est ton nom ? "
#     player2 = Player.new(gets.chomp, "O")
#
#     game = Board.new(player1, player2)
#
#   end
# end
