module SessaoHelper
  def sign_in
    sessao[:user_id] = @jogador.id
  end

end