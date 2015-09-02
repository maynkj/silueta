# silueta

Initialize an object with a hash of attributes.

Inspired by [Ohm's](https://github.com/soveran/ohm) attribute system.

## Usage

```ruby
require "silueta"
require "silueta/types"

class User
  include Silueta

  attribute :first_name
  attribute :last_name
  attribute :email
  attribute :age, cast: ->(x) { x && x.to_i }
  attribute :friends, cast: Types::Integer
end

user = User.new(
  first_name: "Jane",
  last_name: "Doe",
  email: "jane@mail.com"
)

user.first_name # => "Jane"
user.last_name # => "Doe"
user.email # => "jane@mail.com"

user.age = "25"
user.age # => 25

user.friends = "5"
user.friends # => 5

user.attributes
# => {:first_name=>"Jane", :last_name=>"Doe", ... }

```

See all types supported by Silueta [here][types].

## Installation

```
$ gem install silueta
```

[types]: https://github.com/harmoni/silueta/blob/master/lib/silueta/types.rb
