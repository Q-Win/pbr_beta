describe 'when I enter recipe information into the form' do

  before(:each) do
  @recipe = Recipe.create(name: "cookies", ingredients: "flour, sugar", directions: "mix")
  @admin = User.create(name: "Admin", password: "test", role: 1)
  @user = User.create(name: "User", password: "test")
  end

    it 'should create a new recipe when logged in as Admin' do

      visit "/login"

      page.fill_in 'Name', with: 'Admin'
      page.fill_in 'Password', with: 'test'

      click_button("Login")

      visit "/recipes/new"

      page.fill_in 'Name', with: 'muffins'
      page.fill_in 'Ingredients', with: 'muff'
      page.fill_in 'Directions', with: 'stir'

      click_button("Create Recipe")

      expect(current_path).to eq("/recipes")
      expect(page).to have_content("cookies")
      expect(page).to have_content("muffins")

  end

  it 'should NOT create a new recipe when logged in as User' do

    visit "/login"

    page.fill_in 'Name', with: 'User'
    page.fill_in 'Password', with: 'test'

    click_button("Login")

    visit "/recipes/new"

    expect(current_path).to eq("/recipes")
    expect(page).to have_content("cookies")
  end


end
