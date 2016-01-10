class JogadorController < ApplicationController
  
   def new 
     @jogador = Jogador.new 
   end 
   
   def create
     @jogador = Jogador.new(jogador_params) 
     
     if @jogador.save 
       redirect_to @jogador, notice: "Jogador foi criado com sucesso!" 
       #tire o método de comentário quando criar o helper. 
       #Usuário depois de cadastrar-se acessa o sistema automaticamente 
       #sign_in(@user) 
     else 
       render action: :new 
     end 
   end 
   
   private 
   def jogador_params 
      params.require(:jogador).permit(:login, :email, :password, :password_confirmation) 
   end



  
end
