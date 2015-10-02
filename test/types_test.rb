class Product
  include Silueta

  attribute :item_number, cast: Types::String
  attribute :stock, cast: Types::Integer
  attribute :price, cast: Types::Decimal
  attribute :rating, cast: Types::Float
  attribute :published, cast: Types::Boolean
  attribute :state, cast: Types::Symbol
end

test "String" do
  product = Product.new(item_number: 12345678)

  assert product.item_number.kind_of?(String)
end

test "Integer" do
  product = Product.new(stock: "1")

  assert product.stock.kind_of?(Integer)
end

test "Decimal" do
  product = Product.new(price: 0.001)

  assert product.price.kind_of?(BigDecimal)
end

test "Float" do
  product = Product.new(rating: "4.5")

  assert product.rating.kind_of?(Float)
end

test "Boolean" do
  product = Product.new(published: "1")

  assert product.published.kind_of?(TrueClass)
end

test "Symbol" do
  product = Product.new(state: "available")

  assert product.state.kind_of?(Symbol)
end
