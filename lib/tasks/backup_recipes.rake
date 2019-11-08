

namespace :back_up do

  task recipes: :environment do
    def conn
      Faraday.new(url: 'https://pbrbeta.herokuapp.com')
    end

    def recipe_data
      conn.get "/api/v1/recipes" do |f|
      end
    end

    date = Time.now.to_s
    recipes = JSON.parse(recipe_data.body, symbolize_names: true)
    data = date + recipes.to_s


    File.write('./db/back_up/test.rb', data)
  end



end
