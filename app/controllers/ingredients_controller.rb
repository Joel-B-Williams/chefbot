class IngredientsController < ApplicationController

	def index
	end
	
	def show
	end
	
	def new
		@ingredient = Ingredient.new
		@recipe = Recipe.find(params[:recipe_id])
	end
	
	def edit
		@ingredient = Ingredient.find(params[:id])
		@recipe = Recipe.find(params[:recipe_id])
	end
	
	def create
		@ingredient = Ingredient.new(ingredient_params)
		@recipe = Recipe.find(params[:recipe_id])
		@ingredient.recipe_id = @recipe.id

		respond_to do |format|
      if @ingredient.save(ingredient_params)
        format.html { redirect_to edit_recipe_path @recipe, notice: 'ingredient was successfully added.' }
        format.json { render :show, status: :ok, location: @ingredient }
      else
        format.html { render :edit }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
	end
	
	def update
		@ingredient = Ingredient.find(params[:id])
		recipe = Recipe.find(params[:recipe_id])
		 respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to recipe_path(recipe), notice: 'ingredient was successfully updated.' }
        format.json { render :show, status: :created, location: @ingredient }
      else
        format.html { render :edit }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
	end
	
	def destroy
		ingredient = Ingredient.find(params[:id])
		recipe = Recipe.find(params[:recipe_id])
		ingredient.destroy
		respond_to do |format|
      format.html { redirect_to recipe_path(recipe), notice: 'Ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
	end

	private
		def ingredient_params
				params.require(:ingredient).permit(:name, :amount, :measure)
		end
end	
