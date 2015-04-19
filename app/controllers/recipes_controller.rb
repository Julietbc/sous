class RecipesController < ApplicationController

	before_action :authenticate_user!
	
	def index
		@recipes = Recipe.where(user_id: current_user.id)
	end

	def show
		@recipe = Recipe.find(params[:id])
	end

	def new
		@recipe = Recipe.new ## why didn't this need any method body to work?
	end

	def edit
		@recipe = Recipe.find(params[:id])
	end

	def create
		@recipe = Recipe.new(recipe_params)
 		@recipe.user_id = current_user.id
		if @recipe.save
		  redirect_to @recipe
		else
			render 'new'
		end
	end

	def update
	  @recipe = Recipe.find(params[:id])
	 
	  if @recipe.update(recipe_params)
	    redirect_to @recipe
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @recipe = Recipe.find(params[:id])
	  @recipe.destroy
	 
	  redirect_to recipes_path
	end






	private

	def recipe_params
		params.require(:recipe).permit(:name, :text)
	end
end



