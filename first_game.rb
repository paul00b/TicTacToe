root = File.expand_path("./", File.dirname(__FILE__))
require "#{root}/lib/tic_tac_toe.rb"
puts "C'est parti pour un super TIC TAC TOE"
puts "Entrez le nom du joueur 1"
j1 = gets.chomp
puts "Entrez le nom du joueur 2"
j2 = gets.chomp

j1 = TicTacToe::Player.new({color: "X", name: j1})
j2 = TicTacToe::Player.new({color: "O", name: j2})
players = [j1, j2]
TicTacToe::Game.new(players).play
