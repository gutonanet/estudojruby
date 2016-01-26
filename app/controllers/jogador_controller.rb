class JogadorController < ApplicationController
   before_action :authorize, except: [:new, :create]
   before_action :correct_user?, only: [:edit, :update, :destroy]
   def index 
     @jogadores = Jogador.all 
   end 
   def show 
     @jogador = Jogador.find(params[:id]) 
   end
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
   
   def edit 
      @jogador = Jogador.find(params[:id])  
   end 
   def update 
      @jogador = Jogador.find(params[:id]) 
      if @jogador.update_attributes(user_params) 
        redirect_to users_path 
      else 
        render action: :edit 
      end 
   end 
  def destroy 
    @jogador = Jogador.find(params[:id]) 
    @jogador.destroy 
    sign_out 
    redirect_to root_path 
  end

   
   
   private 
   def jogador_params 
      params.require(:jogador).permit(:login, :email, :password, :password_confirmation) 
   end

end
