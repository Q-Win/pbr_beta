describe 'when I enter recipe information into the form' do

  before(:each) do
  @recipe = Recipe.create(name: "cookies", ingredients: "flour, sugar", directions: "mix")
  end

    it 'should create a new recipe' do

      visit "/recipes/new"

      page.fill_in 'Name', with: 'muffins'
      page.fill_in 'Ingredients', with: 'muff'
      page.fill_in 'Directions', with: 'stir'

      click_button("Create Recipe")

      expect(current_path).to eq("/recipes")
      expect(page).to have_content("cookies")
      expect(page).to have_content("muffins")

  end


end
