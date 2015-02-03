class PagesController < ApplicationController
  def home
  	@healthQuests = GeneralQuest.where(category: "health")
  	@staminaQuests = GeneralQuest.where(category: "stamina")
  	@strengthQuests = GeneralQuest.where(category: "strength")
  	@intelligenceQuests = GeneralQuest.where(category: "intelligence")

  	@myAvatar = User.find(current_user.id).my_avatar

  end

  def about
  end
end
