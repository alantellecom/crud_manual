class UsuariosController < ApplicationController
  
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]
  
  def index
    @usuarios =Usuario.all
  end

  def new
    @usuario =Usuario.new
  end

  def create
    @usuario =Usuario.new (usuaio_params)
    @usuario.save
    redirect_to usuario_path(@usuario)
  end

  def show
  end

  def edit
  end

  def update
    @usuario.update(usuaio_params)
    redirect_to usuario_path(@usuario)
  end

  def destroy
    @usuario.destroy
    redirect_to usuarios_path
  end
  
  def usuaio_params
    params.require(:usuario).permit(:nome, :idade)
  end
  
  def set_usuario
      @usuario = Usuario.find(params[:id])
  end  
  
end
