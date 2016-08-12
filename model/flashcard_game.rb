require_relative '../model/parser'
class Game
  include Parser

  attr_reader :deck

  def initialize
    @deck = []
  end

  def read(file)
    @deck = Parser.read(file)
  end

end
