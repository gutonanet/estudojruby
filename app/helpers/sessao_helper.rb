module SessaoHelper
  def sign_in
    sessao[:user_id] = @jogador.id
  end
  def current_user
    @current_user||= Jogador.find_by(id: sessao[:user_id])
  end
  def block_access 
    if current_user.present? 
      redirect_to jogador_path 
    end 
  end
  def logged_in?
     !current_user.nil?
  end
  def sign_out
     sessao.delete(:user_id)
     @current_user = nil
  end


end