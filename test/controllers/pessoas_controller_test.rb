require 'test_helper'

class PessoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pessoa = pessoas(:one)
  end

  test "should get index" do
    get pessoas_url
    assert_response :success
  end

  test "should get new" do
    get new_pessoa_url
    assert_response :success
  end

  test "should create pessoa" do
    assert_difference('Pessoa.count') do
      post pessoas_url, params: { pessoa: { PES_ALTURA: @pessoa.PES_ALTURA, PES_CIDADE: @pessoa.PES_CIDADE, PES_CPF: @pessoa.PES_CPF, PES_DATA_CADASTRO: @pessoa.PES_DATA_CADASTRO, PES_DATA_NASCIMENTO: @pessoa.PES_DATA_NASCIMENTO, PES_EMAIL_ALTERNATIVO: @pessoa.PES_EMAIL_ALTERNATIVO, PES_EMAIL_PRINCIPAL: @pessoa.PES_EMAIL_PRINCIPAL, PES_ESTADO: @pessoa.PES_ESTADO, PES_GENERO: @pessoa.PES_GENERO, PES_IP: @pessoa.PES_IP, PES_NOME: @pessoa.PES_NOME, PES_PESO: @pessoa.PES_PESO, PES_STATUS: @pessoa.PES_STATUS, PES_TIPO_SANGUINEO: @pessoa.PES_TIPO_SANGUINEO } }
    end

    assert_redirected_to pessoa_url(Pessoa.last)
  end

  test "should show pessoa" do
    get pessoa_url(@pessoa)
    assert_response :success
  end

  test "should get edit" do
    get edit_pessoa_url(@pessoa)
    assert_response :success
  end

  test "should update pessoa" do
    patch pessoa_url(@pessoa), params: { pessoa: { PES_ALTURA: @pessoa.PES_ALTURA, PES_CIDADE: @pessoa.PES_CIDADE, PES_CPF: @pessoa.PES_CPF, PES_DATA_CADASTRO: @pessoa.PES_DATA_CADASTRO, PES_DATA_NASCIMENTO: @pessoa.PES_DATA_NASCIMENTO, PES_EMAIL_ALTERNATIVO: @pessoa.PES_EMAIL_ALTERNATIVO, PES_EMAIL_PRINCIPAL: @pessoa.PES_EMAIL_PRINCIPAL, PES_ESTADO: @pessoa.PES_ESTADO, PES_GENERO: @pessoa.PES_GENERO, PES_IP: @pessoa.PES_IP, PES_NOME: @pessoa.PES_NOME, PES_PESO: @pessoa.PES_PESO, PES_STATUS: @pessoa.PES_STATUS, PES_TIPO_SANGUINEO: @pessoa.PES_TIPO_SANGUINEO } }
    assert_redirected_to pessoa_url(@pessoa)
  end

  test "should destroy pessoa" do
    assert_difference('Pessoa.count', -1) do
      delete pessoa_url(@pessoa)
    end

    assert_redirected_to pessoas_url
  end
end
