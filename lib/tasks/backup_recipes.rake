

namespace :back_up do

  task recipes: :environment do
    def conn
      Faraday.new(url: 'https://pbrbeta.herokuapp.com')
    end

    def recipe_data
      conn.get "/api/v1/recipes" do |f|
      end
    end

    date = "#date of back up " + Time.now.to_s + "\n"
    recipes = JSON.parse(recipe_data.body, symbolize_names: true)
    data = date + recipes.to_s
    file_name = './db/back_up/' + Time.now.to_s + ".rb"


    File.write(file_name, data)
  end



end
