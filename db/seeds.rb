Food.destroy_all
Drink.destroy_all
Refridgerator.destroy_all

coke = Drink.create(name: "Coke", size: "Big", alcoholoc: false)
pizza = Food.create(name: "Pizza", weight: "9001", vegan: false, timestamp: 20)

fridgedair = Refridgerator.create(
 drink_id: coke.id,
 food_id: pizza.id,
 location: "Here",
 brand: "Fridgedair",
 size: 100
)
