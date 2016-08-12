require_relative '../model/flash_card'
require_relative '../model/flash_deck'
require_relative '../model/parser'
require_relative '../view/print_pretty'
require 'pry'

class FlashRunner
  attr_reader :card, :game

  def initialize
    @game = Game.new
    @view = View.new
     @file = ARGV[0]
     @deck = @game.read(@file)
    run
  end

  def run
    until @deck.finished?
      binding.pry
      card = @deck.next_card
      @view.print_card(card)
      guess = @view.user_input
      if card.guess_correct?(guess)
        @view.print_correct
      else
        @view.print_wrong
      end
    end
    @view.print_stats(@deck.number_correct,@deck)
  end



   #  i = 0
   #  @deck.each do |card|
   #    puts card.question
   #    input = @view.user_input
   #    if input == card.answer
   #      @view.print_correct
   #      i += 1
   #      else
   #        @view.print_wrong
   #    end
   #    puts
   #  end
   # @view.correct_count(@deck, i)
  # end
end

FlashRunner.new

