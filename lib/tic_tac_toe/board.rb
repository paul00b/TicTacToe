###### Initialisation d'une cellule de jeu ######

class Cell
	attr_accessor :value
	def initialize(value = "")
		@value = value
	end
end


###### Initialisation et création d'une board de jeu ######
module TicTacToe
	class Board
		attr_reader :grid
		def initialize(input={})
			@grid = input.fetch(:grid, default_grid)
		end

##Puis création d'une grille par défaut composées de 3 * 3 cellules (définies dans la classe cell)
		def default_grid
			Array.new(3) {Array.new(3) {Cell.new}}
		end


#### Récupération d'une cellule de la grille###
	def get_cell(x,y)
		grid[y][x]
	end

####MAJ de la valeur de l'objet Cell. Cette méthode doit "savoir" si l'objet cell répond à la valeur

	def set_cell(x,y,value)
		get_cell(x,y).value = value
	end

#### Vérification si le joueur à gagner ou perdu
	def game_over
		return :winner if winner?
		return :draw if draw?
		false
end

#### Methode pour charger une grille par défaut constituée de ◙

    def formatted_grid
      grid.each do |row|
        puts row.map { |cell| cell.value.empty? ? "◙" : cell.value }.join(" ")
      end
    end

####Méthode pour retourner vraie si aucun des elements de l'array est vide
	def draw?
		grid.flatten.map{|cell| cell.value}.none_empty?
	end

### Definie toutes les positions gagnantes possibles. Il y a 3 lignes, 3 colonnes et 2 diagonales possibles

	def winning_positions
  		grid + # rows
  		grid.transpose + # columns	#Permet de collecter les colonnes
 		diagonals # two diagonals
	end

###Permet de créer les diagonales de la grille

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
