class Doador < ActiveRecord::Base
  attr_accessible :cidade, :dtNascimento, :emailAlternativo, :emailPrincipal, :estado, :genero, :nome, :tipoSanguineo
end
