require 'pry'

class View

  def print_question(flash_deck)
    array = []
    flash_deck.each do |card|
      response = ''
      puts "#{card.question}"
      response = STDIN.gets.chomp.downcase
      if card.answer.downcase.include?(response)
        array << "true"
        puts "true"
      else
        puts "false"
      end
    end
    puts "You answered #{array.length} correctly out of #{flash_deck.length}"
  end

end
