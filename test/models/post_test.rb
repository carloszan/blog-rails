require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "title and text null" do
    p = Post.new
    p.title = ''
    p.text = ''
    assert_not p.valid?
  end

  test "title and texts not null" do
    p = Post.new
    p.title = "Oi"
    p.text = "Texto"
    assert p.valid?
  end
end
