module Parser

  def self.read(file)
    file = File.open(file,"r")
    list = []
    file.each_line {|item| list << item.chomp }
    list.delete("")
    questions =  list.select{|element| list.index(element).even? }
    answers =  list.select{|element| list.index(element).odd? }

    questions.each_with_index do |element, index|
      list << Card.new(question: questions[index], answer: answers[index])
      # list << [questions[index],answers[index]]
    end
    file.close
  end

end

Parser.read('nighthawk_flashcard_data.txt')

