# silueta

Initialize an object with a hash of attributes.

## Usage

```ruby
require "silueta"

class User
  include Silueta

  attr_accessor :first_name, :last_name, :email
end

user = User.new(
  first_name: "Mayn",
  last_name: "Kjaer",
  email: "mayn@mail.com"
)

puts user.first_name # => "Mayn"
puts user.last_name # => "Kjaer"
puts user.email # => "mayn@mail.com"
```

## Installation

`$ gem install silueta`
