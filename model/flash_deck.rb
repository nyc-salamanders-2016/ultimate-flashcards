class Game

  include Parser

  def initialize
    @deck = []
  end

  def read(file)
    @deck = Parser.read_text(file)
  end

end
