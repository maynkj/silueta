# silueta

Initialize an object with a hash of attributes.

Inspired by [Ohm's](https://github.com/soveran/ohm) attribute system.

## Usage

```ruby
require "silueta"

class User
  include Silueta

  attribute :first_name
  attribute :last_name
  attribute :email
  attribute :age, cast: ->(x) { x && x.to_i }
end

user = User.new(
  first_name: "Mayn",
  last_name: "Kjaer",
  email: "mayn@mail.com"
)

user.first_name # => "Mayn"
user.last_name # => "Kjaer"
user.email # => "mayn@mail.com"

user.age = "25"
user.age # => 25

user.attributes
# => {:first_name=>"Mayn", :last_name=>"Kjaer", :email=>"mayn@mail.com", :age=>25 }
```

## Installation

```
$ gem install silueta
```
