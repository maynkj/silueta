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
      public_send("#{ name }=", value)
    end
  end

  def attributes
    return self.class.attributes
  end

  def values
    return slice(attributes)
  end

  def slice(attrs)
    return attrs.each_with_object({}) do |att, hash|
      hash[att] = send(att)
    end
  end
end
