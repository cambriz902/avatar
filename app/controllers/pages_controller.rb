class PagesController < ApplicationController

  def home
  	if user_signed_in?
  		@healthQuests = GeneralQuest.where(category: "health")
  		@staminaQuests = GeneralQuest.where(category: "stamina")
  		@strengthQuests = GeneralQuest.where(category: "strength")
  		@intelligenceQuests = GeneralQuest.where(category: "intelligence")


  		unless User.find(current_user.id).my_avatar
  			redirect_to new_my_avatar_path
  		end
  		@myAvatar = User.find(current_user.id).my_avatar 
      #@myAvatar.health_xp = 0;
      #@myAvatar.stamina_xp = 0;
      #@myAvatar.strength_xp = 0;
      #@myAvatar.intelligence_xp = 0;
      #@myAvatar.save
  	end
  end

  def update_avatar_attribute
    @quest = GeneralQuest.find(params[:id])
    @category = @quest.category
    @avatar = User.find(current_user.id).my_avatar
    case @category
    when "health"
      @new_exp = @avatar.health_xp + @quest.experience
      @avatar.health_xp = @new_exp
    when "stamina"
      @new_exp = @avatar.stamina_xp + @quest.experience
      @avatar.stamina_xp = @new_exp
    when "strength"
      @new_exp = @avatar.strength_xp + @quest.experience
      @avatar.strength_xp = @new_exp
    else 
      @new_exp = @avatar.intelligence_xp + @quest.experience
      @avatar.intelligence_xp = @new_exp
    end
    @avatar.save
  end

end