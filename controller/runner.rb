require_relative '../model/flash_card'
require_relative '../model/flash_deck'
require_relative '../model/parser'

class FlashRunner
  attr_reader :card, :game

  def initialize
    @game = Game.new
    @view = View.new
    # @file = ARGV[0]
  end

  def run
    @nighthawk = '../nighthawk_flashcard_data.txt'
    @otter = 'otter_flashcard_data.txt'
    @raccoon = 'raccoon_flashcard_data.txt'

    if ARGV.any?
      if ARGV[0] == @nighthawk
        @game.read(@nighthawk)
      end
    end

  # End run below
  end

end

FlashRunner.new
