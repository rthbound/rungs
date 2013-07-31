module Rungs
  class WordLadder
    include PayDirt::UseCase

    def initialize(options = {})
      options = {
        list: 'selected_four-letter_words.txt',
        steps: 1
      }.merge(options)

      load_options(:word, :list, options)
    end

    def call
      return result(true, ladder)
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

          break if distance > @steps
        end

        output << word.chomp if distance <= @steps && distance > 0
      end

      output
    end
  end
end
