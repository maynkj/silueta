require_relative "silueta/version"

module Silueta
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def attribute(attr)
      attributes << attr

      attr_accessor(attr)
    end

    def attributes
      return @attributes ||= []
    end
  end

  def initialize(attrs = {})
    attrs.each do |name, value|
      self.public_send("#{ name }=", value)
    end
  end

  def attributes
    return self.class.attributes
  end
end
