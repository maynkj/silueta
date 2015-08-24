require_relative "silueta/version"

module Silueta
  def initialize(attrs = {})
    attrs.each do |name, value|
      self.public_send("#{ name }=", value)
    end
  end
end
