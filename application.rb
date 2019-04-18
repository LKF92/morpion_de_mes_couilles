require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/game'
require 'app/board'
require 'app/boardcase'

class Application

  def initialize
    letsplay = Game.new
    letsplay.turn
  end
end

test = Application.new.
test.turn
