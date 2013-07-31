require 'test_helper'

describe Rungs::Climb do
  before do
    @subject          = Rungs::Climb
    @word_ladder_mock = MiniTest::Mock.new
    @file_mock        = MiniTest::Mock.new

    @params = {
      list:              "",
      word_ladder_class: @word_ladder_mock,
      file_class:        @file_mock
    }
  end

  describe "as a class" do
    it "initializes properly" do
      @subject.new.must_respond_to :call
    end
  end

  describe "as an instance" do
    it "executes successfully" do
      @file_mock.expect(:readlines, ["blip"], [@params[:list]])
      @word_ladder_mock.expect(:new, ladder_instance = MiniTest::Mock.new, [{ word: "blip", list: @params[:list], steps: 1 }])
      ladder_instance.expect(:call, ladder = MiniTest::Mock.new)
      ladder.expect(:data, {})

      result = @subject.new(@params).call
      result.successful?.must_equal true
      result.must_be_kind_of PayDirt::Result
    end
  end
end
