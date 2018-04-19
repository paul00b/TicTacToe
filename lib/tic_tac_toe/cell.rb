module TicTacToe #Création d'un module pour éviter les classes collisions
	class Cell
	attr_accessor :value
	def initialize(value = "")
	@value = value
	end
     end
end

# La classe Cell va permettre de connaitre la valeur d'une cellule, en la mettant par défaut à "".
