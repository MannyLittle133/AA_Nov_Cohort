class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  # def self.random_word()
  #   DICTIONARY.sample
  # end

  def self.random_word
    words = File.readlines('dictionary_from_web.txt').map(&:chomp)
    random_index = rand(0...words.length)
    words[random_index]
  end



  attr_reader(:guess_word, :attempted_chars, :remaining_incorrect_guesses)
  def initialize()
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def already_attempted?(char)
    if attempted_chars.include?(char)
      return true
    else
      return false
    end
  end

  def get_matching_indices(char)
    resArr = []
    @secret_word.each_char.with_index { |ch, i| resArr << i if ch == char}
    return resArr
  end

  # arr = index of get matching indices
  # arr = [1, 3, 5]
  # char = "a"
  # @guess_word = ['_', '_', '_', '_', '_', '_']
  # @guess_word = ['_', 'a', '_', 'a', '_', 'a']

  def fill_indices(char, array)
    # should set the given indices of @guess_word to the given char
    array.each { |i| @guess_word[i] = char }
  end

  def try_guess (char)
    if already_attempted?(char)
      puts "that has already been attempted"
      return false
    end

    @attempted_chars << char
    arr = get_matching_indices(char)

    if arr.length == 0 
      @remaining_incorrect_guesses -= 1
    else
      fill_indices(char, arr)
    end
    return true
  end

  def ask_user_for_guess
    puts "Enter a char:"
    input = gets.chomp
    try_guess(input)
  end

  def win?()
    if @guess_word.join("") == @secret_word
      puts "WIN"
      return true
    end
    return false
  end

  def lose?()
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
    end
    false
  end

  def game_over?
    if win? || lose?
      puts @secret_word
      return true
    else
      return false
    end
  end
end


# return means get 
# change means set