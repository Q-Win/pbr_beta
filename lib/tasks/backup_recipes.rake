

namespace :back_up do

  task recipes: :environment do
    def conn
      Faraday.new(url: 'https://pbrbeta.herokuapp.com')
    end

    def recipe_data
      conn.get "/api/v1/recipes" do |f|

      end
    end

    recipes = JSON.parse(recipe_data.body, symbolize_names: true)
    binding.pry

  end



end
