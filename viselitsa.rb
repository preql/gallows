require 'unicode_utils'

require_relative "lib/game"
require_relative "lib/result_printer"
require_relative "lib/word_reader"

VERSION = "Игра виселица 4.0"

reader = WordReader.new

# Программа берет случайное слово из файла
slovo = reader.read_from_file("#{__dir__}/data/words.txt")
game = Game.new(slovo)

game.version = VERSION

printer = ResultPrinter.new(game)

while game.in_progress? do
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)
