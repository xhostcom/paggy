require "test_helper"

class PageTest < ActiveSupport::TestCase
  test "records" do
  assert_equal Recording.first(30), Paggy::Page.new(1, Recording.all).records
  assert_equal Recording.last(20), Paggy::Page.new(4, Recording.all).records
  end 

  test "previous_param" do
    assert_equal 1, Paggy::Page.new(2, Recording.all).previous_param
  end 

  test "next_param" do
    assert_equal 3, Paggy::Page.new(2, Recording.all).next_param
  end

  test "first?" do
    assert_equal true, Paggy::Page.new(1, Recording.all).first?
    assert_equal false, Paggy::Page.new(2, Recording.all).first?
  end 

  test "last?" do
     assert Paggy::Page.new(4, Recording.all).last?
     assert_not Paggy::Page.new(3, Recording.all).last?
  end
end