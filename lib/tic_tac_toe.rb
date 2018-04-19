###Fichier qui require tous les autres fichiers situés dans le dossier lib

require_relative "tic_tac_toe/version"

module TicTacToe
end

require_relative "./tic_tac_toe/new_met_array.rb"
require_relative "./tic_tac_toe/board.rb"
require_relative "./tic_tac_toe/player.rb"
require_relative "./tic_tac_toe/game.rb"
