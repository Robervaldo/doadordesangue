class HomeController < ApplicationController
  
  def index
	@doadores = Pessoa.connection.select_all("SELECT PES_TIPO_SANGUINEO tipo, count(id) qtd FROM pessoas group by pes_tipo_sanguineo")
	@tudo = Pessoa.all.length
	@cidades = Pessoa.connection.select_all("select cid_nome, est_sigla, count(p.id) qtd from pessoas p inner join cidades c on c.id = pes_cidade inner join estados e on e.id = pes_estado group by cid_nome, est_sigla order by count(p.id) desc limit 6")
  end
  
end
