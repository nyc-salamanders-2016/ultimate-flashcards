require_relative '../model/flash_card'
require_relative '../model/flashcard_game'
require_relative '../view/print_pretty'

class FlashRunner
  attr_reader :card, :game

  def initialize
    @game = Game.new
    @view = View.new
    @file = ARGV[0]
    run
  end

  def run
    if ARGV.any?
        @game.read(@file)
        @view.print_question(@game.deck)
    end
  end
end

FlashRunner.new

