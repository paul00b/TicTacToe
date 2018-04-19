#Initialisation et création d'une board de jeu
module TicTacToe
	class Board
		attr_reader :grid
		def initialize(input={})
			@grid = input.fetch(:grid, default_grid)
		end
	
#Création d'une board qui prend comme input un type de grille en array

##Puis création d'une grille par défaut en private
		def default_grid
			Array.new(3) {Array.new(3) {Cell.new}}
		end



#### Récupération de la grid
def get_cell(x,y)
	grid[y][x]
end

####MAJ de la veleur de l'objet Cell. Cette méthode doit savoir si l'objet cell répond à la valeur

def set_cell(x,y,value)
	get_cell(x,y).value = value
end

#### Vérification si gagner ou perdu
def game_over
	return :winner if winner?
	return :draw if draw?
	false
end

#### Methode pour charger une grille par défaut

    def formatted_grid
      grid.each do |row|
        puts row.map { |cell| cell.value.empty? ? "_" : cell.value }.join(" ")
      end
    end
####Méthode pour retourner vraie si aucun des elements de l'array est vide
	def draw?
		grid.flatten.map{|cell| cell.value}.none_empty?
	end
### Definie toutes les positions gagnantes possibles
	def winning_positions
  		grid + # rows
  		grid.transpose + # columns	#Permet de collecter les colones
 		diagonals # two diagonals
	end
 
###Permet de créer les diagonales
	def diagonals
		  [
			[get_cell(0, 0), get_cell(1, 1), get_cell(2, 2)],
 			[get_cell(0, 2), get_cell(1, 1), get_cell(2, 0)]
		  ]
	end

### Définition de la méthode winner? qui itère dans toutes les winning positions et skip les cells vides, retourne true si les array sont les même

	def winner?
		winning_positions.each do |winning_position|
			next if winning_position_values(winning_position).all_empty?
			return true if winning_position_values(winning_position).all_same?
		end
		false
	end

	def winning_position_values(winning_position)
		winning_position.map {|cell| cell.value }
	end

end
end
