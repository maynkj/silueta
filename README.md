# silueta

Initialize an object with a hash of attributes.

## Usage

```ruby
require "silueta"

class User
  include Silueta

  attribute :first_name
  attribute :last_name
  attribute :email
end

user = User.new(
  first_name: "Mayn",
  last_name: "Kjaer",
  email: "mayn@mail.com"
)

user.first_name # => "Mayn"
user.last_name # => "Kjaer"
user.email # => "mayn@mail.com"

user.attributes
# => {:first_name=>"Mayn", :last_name=>"Kjaer", :email=>"mayn@mail.com"}
```

## Installation

```
$ gem install silueta
```
