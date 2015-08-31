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
  attributes = %i(name email)

  assert_equal(attributes, User.attributes)
  assert_equal(attributes, User.new.attributes)
end

test "values" do
  values = { name: "Mayn", email: "mayn@mail.com"}
  user = User.new(values)

  assert_equal(values, user.values)
end
