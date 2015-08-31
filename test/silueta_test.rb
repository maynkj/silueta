require "bundler/setup"
require "cutest"
require_relative "../lib/silueta"

class User
  include Silueta

  attribute :name
  attribute :email
end

test "initialize" do
  user = User.new(name: "Mayn", email: "mayn@mail.com")

  assert_equal("Mayn", user.name)
  assert_equal("mayn@mail.com", user.email)
end

test "attributes" do
  attributes = { name: "Mayn", email: "mayn@mail.com"}
  user = User.new(attributes)

  assert_equal(attributes, user.attributes)
end

test "class attributes" do
  assert_equal(%i(name email), User.attributes)
end
