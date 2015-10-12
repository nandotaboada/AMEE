require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase

  def setup
    @usuario = Usuario.new(nome: "Example User", email: "user@example.com",
    password: "foobar", password_confirmation: "foobar")
  end

  test "password should have a minimum length" do
      @usuario.password = @usuario.password_confirmation = "a" * 5
      assert_not @usuario.valid?
  end

  test "name should not be too long" do
      @usuario.nome = "a" * 51
      assert_not @usuario.valid?
  end

  test "email should not be too long" do
      @usuario.email = "a" * 244 + "@example.com"
      assert_not @usuario.valid?
  end

  # test "the truth" do
  #   assert true
  # end
end
