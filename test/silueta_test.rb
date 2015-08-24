require "bundler/setup"
require "cutest"
require_relative "../lib/silueta"

class User
  include Silueta

  attr_accessor :name, :email
end

scope do
  test "initialize" do
    user = User.new(name: "Mayn", email: "mayn@mail.com")

    assert_equal("Mayn", user.name)
    assert_equal("mayn@mail.com", user.email)
  end
end
