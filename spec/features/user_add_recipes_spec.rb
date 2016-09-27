require 'rails_helper'

feature 'user add recipes' do
  scenario 'successufuly' do
    visit new_recipe_path

    fill_in 'Nome da Receita', with: recipe.name
    fill_in 'Cozinha', with: recipe.kitchen
    fill_in 'Tipo', with: recipe.food_type
    fill_in 'Porção', with: recipe.portion
    fill_in 'Tempo de Preparação', with: recipe.preparation_time
    fill_in 'Dificuldade', with: recipe.difficulty
    
  end
end
