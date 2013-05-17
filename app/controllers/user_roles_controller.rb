class UserRolesController < ApplicationController
  authorize_resource
  # GET /users_roles
  # GET /users_roles.json  
  def index
    @users = User.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @user_roles }
    end
  end
  
  def show
    @user = User.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user }
    end
  end
  
  # Atualiza perfil
  def update
    @user_roles = UserRole.where(:user_id => params[:id])
    
    @user_roles.delete_all
    role_check = true
    if params[:role_ids]      
      params[:role_ids].each do |role_id|
        role = Role.find(role_id)
        user = User.find(params[:id])
        if !user.add_role role.name
          role_check = true
        end
      end
    end
    
    respond_to do |format|
       if role_check
        format.html { redirect_to user_roles_path, :notice => 'Perfil Atualizado com sucesso.' }
        format.json { head :no_content }
       else
         format.html { render :action => "update" }
         format.json { render :json =>role_check, :status => :unprocessable_entity }
       end
    end
  end
  
end
