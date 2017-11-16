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
	end
	
	def create
		@ingredient = Ingredient.new(ingredient_params)
		@recipe = Recipe.find(params[:recipe_id])
		
		respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to @recipe, notice: 'ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingredient }
      else
        format.html { render :edit }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
	end
	
	def update
	end
	
	def destroy
	end

	private
		def ingredient_params
				params.require(:ingredient).permit(:name, :amount, :measure, :recipe_id)
		end
end	
