require_relative '../model/flash_card'
require_relative '../model/flash_deck'
require_relative '../model/parser'
require 'pry'

class FlashRunner
  attr_reader :card, :game

  def initialize
    @game = Game.new
    #@view = View.new
     @file = ARGV[0]
    run
  end

  def run
    if ARGV.any?
        @game.read(@file)
    end
  end
end

FlashRunner.new

