require_relative '../model/flash_card'
require_relative '../model/flash_deck'

class FlashRunner
  attr_reader :card, :game, :file

  def initialize
    @game = Game.new
    @view = View.new
    @file = ARGV[0]
  end

  def run
    # @nighthawk = 'nighthawk_flashcard_data.txt'
    # @otter = 'otter_flashcard_data.txt'
    # @raccoon = 'raccoon_flashcard_data.txt'

    if ARGV.any?
      @game.read(@file)
    end

  # End run below
  end

end
