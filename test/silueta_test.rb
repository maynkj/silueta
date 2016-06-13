class User
  include Silueta

  attribute :name
  attribute :email
  attribute :age, cast: ->(x) { x && x.to_i }
end

test "initialize" do
  user = User.new(name: "Jane", email: "jane@mail.com")

  assert_equal("Jane", user.name)
  assert_equal("jane@mail.com", user.email)
end

test "attributes" do
  attributes = { name: "Jane", email: "jane@mail.com", age: nil }
  user = User.new(attributes)

  assert_equal(attributes, user.attributes)
end

test "class attributes" do
  assert_equal(%i(name email age), User.attributes)
end

test "casting" do
  user = User.new(name: "Jane", email: "jane@mail.com", age: "25")

  assert user.age.kind_of?(Integer)
  assert_equal(25, user.age)
end

test "inheritance" do
  class Admin < User
    attribute :superpowers
  end

  assert_equal(User.attributes + [:superpowers], Admin.attributes)
end

test "ignore unlisted attributes" do
  user = User.new(name: "Jane", email: "jane@mail.com", age: "25", alignment: "chaotic neutral")

  assert !user.respond_to?(:alignment)
end

