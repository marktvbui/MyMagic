# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |x|
  x + 1
User.create(user_id: x + 1, 
            first_name: Faker::GameOfThrones.character.first_name,
            last_name: Faker::GameOfThrones.character.last_name, 
            email: Faker::Internet.email("#{first_name}.#{last_name}")
            )

Card.create(card_id: x + 1, 
            card_type: "creature", 
            color: Faker::Color.color_name, 
            mana_cost: "red", 
            power: Faker::Number.between(0, 10), 
            toughness: Faker::Number.between(1, 10))

Deck.create(deck_id: x + 1, 
            user_id: Faker::Number.between(1, 10))

DeckCard.create(card_id: Faker::Number.between(1, 20), 
                deck_id: Faker::Number.between(1, 10))

CollectionCard.create(card_id: Faker::Number.between(1, 20), 
                      user_id: Faker::Number.between(1, 10))

WishList.create(user_id: Faker::Number.between(1, 10), 
                card_id: Faker::Number.between(1, 20), 
                target_price: Faker::Number.decimal(2,2)) 
end



