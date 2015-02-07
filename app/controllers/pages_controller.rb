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
  	end
  end
end