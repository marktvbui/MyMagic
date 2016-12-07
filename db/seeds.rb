# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 
User.create(user_id: 1, first_name: "mark", email: "mark@mark.com")
Card.create(card_id: 1, card_type: "creature", color: "red", mana_cost: "r", power: 100, toughness: 100)
Deck.create(deck_id: 1, user_id: 1)
DeckCard.create(card_id: 1, deck_id: 1)
CollectionCard.create(card_id: 1, user_id: 1)
WishList.create(user_id: 1, card_id: 1, target_price: 1.00) 




