require_relative '../model/flash_card'
require_relative '../model/flash_deck'

class FlashRunner
  attr_reader :card, :game

  def initialize
    @game = Game.new
    @view = View.new
    run
  end

  def run
    @nighthawk = 'nighthawk_flashcard_data.txt'
    @otter = 'otter_flashcard_data.txt'
    @raccoon = 'raccoon_flashcard_data.txt'

    if ARGV.any?
      if ARGV[0] == @nighthawk
        @game.read(@nighthawk)
      elsif ARGV[0] == @otter
        @game.read(@otter)
      elsif ARGV[0] == @raccoon
        @game.read(@raccoon)
      end

    end

  # End run below
  end

end
