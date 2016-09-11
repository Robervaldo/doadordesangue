require 'test_helper'

class CadastrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadastro = cadastros(:one)
  end

  test "should get index" do
    get cadastros_url
    assert_response :success
  end

  test "should get new" do
    get new_cadastro_url
    assert_response :success
  end

  test "should create cadastro" do
    assert_difference('Cadastro.count') do
      post cadastros_url, params: { cadastro: { altura: @cadastro.altura, cidade: @cadastro.cidade, cpf: @cadastro.cpf, data_nascimento: @cadastro.data_nascimento, email_alternativo: @cadastro.email_alternativo, email_principal: @cadastro.email_principal, estado: @cadastro.estado, genero: @cadastro.genero, ip: @cadastro.ip, nome: @cadastro.nome, peso: @cadastro.peso, status: @cadastro.status, tipo_sanguineo: @cadastro.tipo_sanguineo } }
    end

    assert_redirected_to cadastro_url(Cadastro.last)
  end

  test "should show cadastro" do
    get cadastro_url(@cadastro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadastro_url(@cadastro)
    assert_response :success
  end

  test "should update cadastro" do
    patch cadastro_url(@cadastro), params: { cadastro: { altura: @cadastro.altura, cidade: @cadastro.cidade, cpf: @cadastro.cpf, data_nascimento: @cadastro.data_nascimento, email_alternativo: @cadastro.email_alternativo, email_principal: @cadastro.email_principal, estado: @cadastro.estado, genero: @cadastro.genero, ip: @cadastro.ip, nome: @cadastro.nome, peso: @cadastro.peso, status: @cadastro.status, tipo_sanguineo: @cadastro.tipo_sanguineo } }
    assert_redirected_to cadastro_url(@cadastro)
  end

  test "should destroy cadastro" do
    assert_difference('Cadastro.count', -1) do
      delete cadastro_url(@cadastro)
    end

    assert_redirected_to cadastros_url
  end
end
