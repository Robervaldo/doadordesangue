class CadastrosController < ApplicationController
  before_action :set_cadastro, only: [:show, :edit, :update, :destroy]
  #before_action :list_cadastro
  
  # GET /cadastros
  # GET /cadastros.json
  def index
    @cadastros = Cadastro.all
  end

  # GET /cadastros/1
  # GET /cadastros/1.json
  def show
  end

  # GET /cadastros/new
  def new
    @cadastro = Cadastro.new
    @estados = Estado.all
    @cidades = Cidade.none
    #@cidade_list = Cidade.connection.select_all("select CID_NOME, id from cidades where CID_ESTADO = 1")
  end

  def update_cidades
    @cidades = Cidade.where("cid_estado = ?", params[:estado_id]).all
    render :partial => "cidade", :object => @cidades
  end

  # GET /cadastros/1/edit
  def edit
  end

  # POST /cadastros
  # POST /cadastros.json
  def create

    @cadastro = Cadastro.new(cadastro_params)
    @cadastro.cad_status = 'A' 
    respond_to do |format|
     
      if @cadastro.save
        if @cadastro.cad_tipo_sanguineo
          format.json { render json: @cadastro.errors, status: :unprocessable_entity }
        end
        format.html { redirect_to @cadastro, notice: 'Doador cadastro com sucesso!.' }
        format.json { render :show, status: :created, location: @cadastro }
      else
        format.html { render :new }
        format.json { render json: @cadastro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastros/1
  # PATCH/PUT /cadastros/1.json
  def update
    respond_to do |format|
      if @cadastro.update(cadastro_params)
        format.html { redirect_to @cadastro, notice: 'Cadastro was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadastro }
      else
        format.html { render :edit }
        format.json { render json: @cadastro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastros/1
  # DELETE /cadastros/1.json
  def destroy
    @cadastro.destroy
    respond_to do |format|
      format.html { redirect_to cadastros_url, notice: 'Cadastro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro
      @cadastro = Cadastro.find(params[:id])
    end

    def list_cadastro
      @cidade_list = Cidade.connection.select_all("select CID_NOME, id from cidades where CID_ESTADO = 0")
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_params
      params.require(:cadastro).permit(:cad_nome, :cad_data_nascimento, :cad_estado, :cad_cidade, :cad_cpf, :cad_genero, :cad_tipo_sanguineo, :cad_email_principal, :cad_email_alternativo, :cad_peso, :cad_altura, :cad_ip, :cad_status)
    end
end
