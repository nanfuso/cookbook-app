class RecipesController < ApplicationController
    def one_recipe_action
        @recipe = Recipe.first
        render 'one_recipe_view.html.erb'

    end
end
