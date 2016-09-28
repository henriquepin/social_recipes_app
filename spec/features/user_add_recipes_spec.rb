require 'rails_helper'

feature 'user add recipes' do
  scenario 'successufuly' do
    recipe = create(:recipe)

    visit new_recipe_path

    fill_in 'Nome da Receita', with: recipe.name
    fill_in 'Cozinha', with: recipe.kitchen_type
    fill_in 'Tipo', with: recipe.food_type
    fill_in 'Porção', with: recipe.portion
    fill_in 'Tempo de Preparação', with: recipe.preparation_time
    fill_in 'Dificuldade', with: recipe.level
    fill_in 'Ingredientes', with: recipe.ingredient
    fill_in 'Mode de preparo', with: recipe.step

    click_on 'Adicionar receita'

    expect(page). to have_content recipe.name
    expect(page). to have_content recipe.kitchen_type
    expect(page). to have_content recipe.food_type
    expect(page). to have_content recipe.portion
    expect(page). to have_content recipe.preparation_time
    expect(page). to have_content recipe.level
    expect(page). to have_content recipe.ingredient
    expect(page). to have_content recipe.step
  end
end
