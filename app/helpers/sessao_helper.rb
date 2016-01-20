module SessaoHelper
  def sign_in
    sessao[:user_id] = @jogador.id
  end
  def current_user
    @current_user||= Jogador.find_by(id: sessao[:user_id])
  end

end