require 'pay_dirt'

module ServiceObjects
  class WordLadder < PayDirt::Base
    def initialize(options = {})
      options = {
        list: 'selected_four-letter_words.txt',
      }.merge(options)

      load_options(:word, :list, options)
    end

    def call
      return result(true, ladder: ladder)
    end

    private
    def words
      File.readlines(@list)
    end

    def ladder
      output = []

      words.each do |word|
        distance = 0

        word.chomp.chars.each_with_index do |character, i|
          distance += 1 unless character == @word[i]

          break if distance > 1
        end

        output << word if distance == 1
      end

      output
    end
  end
end
