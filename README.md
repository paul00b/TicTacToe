# TicTacToe

Project TicTacToe with THP by Paul Broussolle

## How to use ?

1. Run the ``First_game.rb`` file to play. Then add the first player, followed but the player 2.
2. Move through the cases by typing the number of the case (from 1 to 9)
4. BEAT HIM
5. <3

## Why a GEM ?
So that's easier to install, and that's funnier to try :D
To install a GEM, type ``bundle gem Name_of_the_gem``. It will create folders like this :
* ``Name_of_the_gem``
  * bin
  * lib
    * tic_tac_toe (wich is where you have to put all the files)
  * spec (to create specifications)
  * Gemfile
  * Rakefile
  * Readme.md
  * ```Name_of_gem```.gemspec

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tic_tac_toe'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tic_tac_toe

## How does it work ?
* The ```board.rb``` file :
  * Initialize and create a board.
  * Uses the class cell to build a 3*3 Array
  * Check if a case is empty or isn'
  * Create diagonals to use them to check if it's win or not

* The ```core_extensions.rb``` file :
  * Initialize and create a board.
  * Uses the class cell to build a 3*3 Array
  * Check if a case is empty or isn'
  * Create diagonals to use them to check if it's win or not


## Others
I found the following function to require all the files :
``
root = File.expand_path("./", File.dirname(__FILE__))
require "#{root}/lib/tic_tac_toe.rb"
``


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/paul00b/tic_tac_toe.
