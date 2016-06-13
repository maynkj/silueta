require_relative "silueta/version"

module Silueta
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def inherited(subclass)
      subclass.attributes.replace(attributes)
    end

    def attribute(attr, cast: nil)
      attributes << attr

      if cast
        define_method(attr) do
          return cast.call(@attributes[attr])
        end
      else
        define_method(attr) do
          return @attributes[attr]
        end
      end

      define_method(:"#{attr}=") do |value|
        @attributes[attr] = value
      end
    end

    def attributes
      return @attributes ||= []
    end
  end

  def initialize(attrs = {})
    @attributes = {}

    update(attrs)
  end

  def update(attrs)
    attrs.each do |attr, value|
      public_send(:"#{ attr }=", value) if respond_to?(:"#{ attr }=")
    end
  end

  def attributes
    return slice(*self.class.attributes)
  end

  def slice(*attrs)
    return attrs.each_with_object({}) do |att, hash|
      hash[att] = send(att)
    end
  end
end
