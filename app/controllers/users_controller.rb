class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def edit
  end

  def update
    respond_to do |format|
     if @user.update(user_params)
      format.html { redirect_to "/dashboard", notice: 'User was successfully updated.' }
      format.json { head :no_content }
      format.js
     else
      format.html { render action: 'link' }
      format.json { render json: @user.errors, status: :unprocessable_entity }
     end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :userable_id, :userable_type, {:role_ids => []})
    end

end
