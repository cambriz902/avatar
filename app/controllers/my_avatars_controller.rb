class MyAvatarsController < ApplicationController
  before_action :set_my_avatar, only: [:show, :edit, :update, :destroy] 
  before_action :authenticate_user!

  respond_to :html

  def index
    @my_avatars = MyAvatar.where(user_id: current_user)
    respond_with(@my_avatars)
  end

  def show
    respond_with(@my_avatar)
  end

  def new
      @my_avatar = MyAvatar.new
      respond_with(@my_avatar)
  end

  def edit
  end

  def create
    @my_avatar = MyAvatar.new(my_avatar_params)
    @my_avatar.user_id = current_user.id
    @my_avatar.save
    respond_with(@my_avatar)
  end

  def update
    @my_avatar.update(my_avatar_params)
    respond_with(@my_avatar)
  end

  def destroy
    @my_avatar.destroy
    respond_with(@my_avatar)
  end

  private
    def set_my_avatar
      @my_avatar = MyAvatar.find(params[:id])
    end

    def my_avatar_params
      params.require(:my_avatar).permit(:health_xp, :stamina_xp, :strength_xp, :intelligence, :user_id, :name)
    end

end
