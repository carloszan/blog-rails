require 'test_helper'

class AuthorTest < ActiveSupport::TestCase

  test "validating author" do
    author = Author.new
    author.email = ''
    author.name  = ''
    assert author.invalid?, "email and name are nil"

    author.email = "a"*51
    author.name  = "a"*51
    assert author.invalid?, "email and name are too long"
  end
end
