require "bigdecimal"

module Silueta
  module Types
    Integer   = ->(x) { x && Integer(x) }
    Decimal   = ->(x) { x && BigDecimal(x.to_s) }
    Float     = ->(x) { x && Float(x) }
    String    = ->(x) { x && String(x) }
    Symbol    = ->(x) { x && x.to_sym }
    Boolean   = ->(x) { x && true }
  end
end
