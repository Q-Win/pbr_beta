# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "ted", password: "test", role: 1)

User.create(name: "bob", password: "test", role: 0)


Recipe.create(name: "Minestrone", ingredients: "4 medium tomatoes, 1/2 cup tomato paste,
  2 medium zucchini, 2 medium carrots, 2 stalks celery, 1 can chick peas (garbonzo beans), 4 cups veggie broth, 5 oz pasta, 2 tbsp basil",
  directions: "Chop the carrots, celery, and tomatoes into bite size pieces.

   Add the carrots and celery to a large soup pot and sautee with oil or water for about 5 minutes.

  Once the carrots and celery are softened. Add the tomatoes, broth, and tomato paste
  and bring to a boil. Once it is boiling reduce the heat to low, cover, and simmer for
  20 minutes.

  Next add the zucchini, chick peas, and pasta to the pot. Bring to a boil. Once it comes
  to a boil, reduce the heat to low, cover, and simmer fo 20 minutes.

  After that add some fresh basil and serve.",
  notes: "You can use water or oil to sautee veggies.")


Recipe.create(name: "Chocolate Chip Cookies", ingredients: "2 cups all purpose flour, 1/2 cup white sugar, 1/2 cup brown sugar,1 tsp baking powder, tsp salt, tsp vanilla, 1/4 cup olive oil, 1/4 cup soy milk, 2/3 cup chocolate chips ",
    directions: "Mix flour, sugars, baking powder, and salt together in a large mixing bowl. Once dry ingredients are mixed add olive oil and vanilla. Then add the milk 1 tbs at a time so the dough doesn't get too wet. After that mix in the chocolate chips. Once everything is mixed let dough chill in the freezer for 15 minutes or in the fridge for at least 1 hour. Then add small balls of cookie dough to a baking sheet. Bake at 350 F for 10 minutes. ",
    notes: "You can use more or less chocolate chips if you want.")

Recipe.create(name: "Pumpkin Bread", ingredients: "2 cups whole wheat flour, 1 can pumkin puree, 3/4 cup sugar, 1/3 cup soy milk, 1/3 cup olive oil, 1 tsp vanilla, 1 tsp salt, 1 tsp baking powder, 1 tsp baking soda, 1 tbs pumpkin spice ",
      directions: "Mix all dry ingredient except the sugar in a large mixing bowl. In a seperate bowl mix olive oil, soy milk, sugar, and vanilla. Add the wet mixture into the dry ingredient bowl. Then mix in the pumpkin puree. Add the dough to a lightly greased loaf pan. Bake in over at 350 F for 55-60 minutes.",
      notes: "You can use unsweet apple sauce instead of olive oil for an oil free recipe. If you want to make muffins instead of a loaf you can bake in a muffin sheet at 375 for 20 minutes.")

Recipe.create(name: "Mashed Potatoes", ingredients: "2 pounds potatoes, 1 cup soy milk, salt, pepper",
  directions: "Cut potatoes into 1 inch pieces. Boil for around 25 minutes or until soft. Mash with hand masher or electric. ",
  notes: "You can peel or not peel the potatoes.")

recipes = [
            {name: "Split Pea Soup", ingredients: "8 cups veggie broth, 1 pound split green peas, 1 lb potaoes, 2 cups diced carrots, 1 onion, 5 cloves garlic, salt, pepper ", directions: "Dice potatoes, onions, carrots, and garlic. Saute onions, carrots, and garlic in oil or water to soften them. Should take 5-10 minutes. Then add peas, broth, and poatoes to pot. Bring to a boil. Cover and simmer for 45-55 minutes."},
            {name: "Jerk Lentils", ingredients: "1 lb dry lentils ", directions: "Dice potatoes, onions, carrots, and garlic. Saute onions, carrots, and garlic in oil or water to soften them. Should take 5-10 minutes. Then add peas, broth, and poatoes to pot. Bring to a boil. Cover and simmer for 45-55 minutes."},
            {name: "Nacho Cheese", ingredients: "2 cups peeled potatoes, 1 cup chopped carrots, 1/2 cup green bell pepper, 1 Cup Water, 1 Tbsp Lemon Juice, ½ Cup Nutritional Yeast, ½ Tsp Onion Powder, ½ Tsp Garlic Powder (If Tolerated), ½ Tsp Turmeric Powder, 2 Tbsp Pink Himalayan Salt (Salt to Taste), ¼ Cup Salsa", directions: "Boil The Potatoes And Carrots Until Soft (About 10 Minutes). Before the Potatoes and Carrots get Too Soft add the Chopped Bell Peppers into the same Pot, only Cooking for 1-2 minutes. Drain Water. Put Softened Potatoes, Carrots, Bell Pepper, Water, Lemon Juice, Nutritional Yeast, Onion Powder, Garlic Powder, Turmeric Powder, Salt, And Salsa (Optional) In A Blender. Blend Until Completely Smooth.", notes: "If the mixture is too thick for your liking, add more water and feel free to add more seasonings."},
            {name: "Whole Grain Pancakes", ingredients: "1/2 cup oats, 1/4 cup whole wheat flour, 1 ripe banana, 1 tsp baking soda, 6-8 oz of plant milk, 1 tbs of coco powder (optional) ", directions: "Add all ingredients in a blender and mix well. Heat pan to med-high heat. Make sure pan is hot before making first pancake. Add oil/butter to pan and pour pancake batter from blender into pan. Cook pancakse on both sides for 2 minutes. Pancakes should form a film before they are ready to flip.", notes: "You can use water instead of milk. Top with you choice of syrup, peanut butter, jelly, fruit, ice cream, etc."},
            {name: "Hot Chocolate", ingredients: "1.5 cups of plant milk, 1 tbs of coco powder, 1 tbsp chocolate chips, sugar to taste ", directions: "Add milk to sauce pan and bring to boil over med heat. Add in coco powder and chocolate chips. Whisk until they have all dissolved. Add in as much sugar as you'd like. Pour into a mug. You can keep adding sugar after this so its best to add a little at a time and taste."}
          ]

recipes.each do |r|
  Recipe.create(r)
end
