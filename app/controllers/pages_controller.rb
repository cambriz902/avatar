class PagesController < ApplicationController
  def home
  	@healthQuests = GeneralQuest.where(category: "health")
  	@staminaQuests = GeneralQuest.where(category: "stamina")
  	@strengthQuests = GeneralQuest.where(category: "strength")
  	@intelligenceQuests = GeneralQuest.where(category: "intelligence")
  end

  def about
  end
end
