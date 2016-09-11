class HomeController < ApplicationController
  
  def index
	@doadores = Cadastro.connection.select_all("select cad_tipo_sanguineo tipo, count(id) qtd from cadastros group by cad_tipo_sanguineo")
	@tudo = Cadastro.all.length
	@cidades = Cadastro.connection.select_all("select cid.cid_nome, est.est_sigla, count(cad.id) qtd from cadastros cad inner join cidades cid on cid.id = cad.cad_cidade inner join estados est on est.id = cad_estado group by cid.cid_nome, est.est_sigla order by count(cad.id) desc limit 6")
  end
  
end
