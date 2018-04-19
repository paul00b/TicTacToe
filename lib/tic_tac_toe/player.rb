## Permet de suivre le nom du joueur, et de savoir si ce sont des X ou des O
module TicTacToe # Permet d'éviter les collisions de nom si gem importée
	class Player
	attr_reader :color, :name
	def initialize(input)
		@color = input.fetch(:color) #Pour ajouter une couleur au player
		@name = input.fetch(:name)
	end
     end
end 
