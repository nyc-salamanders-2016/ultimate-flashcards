#require_relative '../model/parser'
class Game

  #include Parser

  def initialize
    @deck = []
  end

  def read(file)
    @deck = Parser.read_text(file)
    p @deck
  end

end
