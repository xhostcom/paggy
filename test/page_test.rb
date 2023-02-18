require "test_helper"

class PageTest < ActiveSupport::TestCase
  test "records" do
  assert_equal Recording.first(30), Paggy::Page.new(1, Recording.all).records
  assert_equal Recording.last(20), Paggy::Page.new(4, Recording.all).records

  end
end