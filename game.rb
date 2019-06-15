class Game
  def initialize(slovo)
    @letters = get_letters(slovo.downcase)
    @good_letters = []
    @bad_letters = []
    @errors = 0
    @status = 0
  end

  def get_letters(slovo)
    if (slovo == nil || slovo == "")
      abort "Вы не ввели слово для игры"
    end
    return slovo.split("")
  end

  def ask_next_letter
    puts "\nВведите следующую букву"
    letter = ""

    while letter == "" do
      letter = STDIN.gets.encode("UTF-8").chomp.downcase
    end
    next_step(letter)
  end

  def next_step(bukva)
    if @status == -1 || @status == 1
      return
    end

    if @good_letters.include?(bukva) || @bad_letters.include?(bukva)
      return
    end

    if @letters.include?(bukva)
      if (bukva == "e" && letters.include?("ё"))
        @good_letters << "ё"
      end
      if (bukva == "ё" && letters.include?("е"))
        @good_letters << "е"
      end
      if (bukva == "и" && letters.include?("й"))
        @good_letters << "й"
      end
      if (bukva == "й" && letters.include?("и"))
        @good_letters << "и"
      end

      # Когда выбранная буква есть в угадываемом слове, добавляем ее в массив
      # правильных ответов
      @good_letters << bukva

      # Условие когда игра выйграна
      if @good_letters.uniq.sort == @letters.uniq.sort
        @status = 1
      end
    else
      # Когда выбранной буквы нет в угадываемом слове, добавляем ее в массив
      # не правильных ответов
      @bad_letters << bukva
      @errors += 1

      # Условие когда игра проиграна
      if @errors >= 7
        @status = -1
      end
    end
  end

  def letters
    @letters
  end

  def good_letters
    @good_letters
  end

  def bad_letters
    @bad_letters
  end

  def status
    @status
  end

  def errors
    @errors
  end
end
