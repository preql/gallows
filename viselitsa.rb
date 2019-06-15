# coding: utf-8

require_relative "game"
require_relative "result_printer"
require_relative "word_reader"

printer = ResultPrinter.new
reader = WordReader.new

# Программа берет случайное слово из файла
slovo = reader.read_from_file("#{__dir__}/data/words.txt")
game = Game.new(slovo)

while game.status == 0 do
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)
