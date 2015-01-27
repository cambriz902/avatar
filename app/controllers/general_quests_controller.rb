class GeneralQuestsController < ApplicationController
	def index
		# will have template
		@quests = GeneralQuest.all
	end

	def new # display the for new record
		# will have template
		@quest = GeneralQuest.new
	end

	def create # save new record
		# will save and redirect
		@quest = GeneralQuest.new(allowed_params)
		if @quest.save
			redirect_to general_quests_path
		else
			render 'new'
		end

	end

	def edit # display form for editing record
		# will save and redirect
		@quest = GeneralQuest.find(params[:id])
	end

	def update # save changes
		# will save and redirect
		@quest = GeneralQuest.find(params[:id])
		if @quest.update_attributes(allowed_params)
			@quest.save
			puts(allowed_params)
			redirect_to general_quests_path
		else
			render 'update'
		end

	end

	def destroy
		# will destroy and redirect
		@quest = GeneralQuest.find(params[:id])
		@quest.destroy
		redirect_to general_quests_path
	end

	def get_strength_quests
		return GeneralQuest.where(category: "health")
	end
	
	private 
		def allowed_params
			params.require(:general_quest).permit(:category, :title, :description, :experience, :available)
		end

end
