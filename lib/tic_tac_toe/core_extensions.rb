class Array
##Cette méthode retourne vraie si les elements de l'array sont vide, false si ils sont pleins
	def all_empty?
		self.all? {|elem|elem.to_s.empty?}
	end
##Cette méthode returne true si tous les éléments de l'array sont les mêmes, et faux si ce n'est pas le cas
	def all_same?
		self.all?{|elem|elem ==self[0]}
	end
### Retourne true si l'array est vide et false si ce n'est pas le cas
	def any_empty?
		self.any? {|elem| elem.to_s.empty?}
	end
## Retourne true si il n'y a aucun élément vide
	def none_empty?
		!any_empty?
	end
end
