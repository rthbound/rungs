require "pay_dirt/use_case"

module Rungs
  class Climb
    include PayDirt::UseCase

    def initialize(options = {})
      options = {
        list: "selected_four-letter_words.txt",
        steps: 1,
        file_class: File,
        word_ladder_class: Rungs::WordLadder
      }.merge(options)

      load_options(options)
    end

    def call
      ret_hash = {}

      @file_class.readlines(@list).each do |word|
        ret_hash[word.chomp] = @word_ladder_class.new({
          word:  word.chomp,
          list:  @list,
          steps: @steps
        }).call.data
      end

      return result(true, ret_hash)
    end
  end
end
