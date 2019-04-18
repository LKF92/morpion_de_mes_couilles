require 'bundler'
Bundler.require

class BoardCase
  attr_accessor :symbol, :case

  def initialize(case_id)
    @symbol = " "
    @case = case_id.to_i
  end
end
