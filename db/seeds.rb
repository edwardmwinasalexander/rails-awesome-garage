puts "Cleaning the DB"

# Clear existing data
Car.destroy_all
Owner.destroy_all

# Create Owners
owner01 = Owner.create!(nickname: "Samwel")
owner02 = Owner.create!(nickname: "Maria")
owner03 = Owner.create!(nickname: "Hassan")

# Create Cars
Car.create!(brand: "Toyota", model: "Camry", year: "2023", fuel: "Hybrid", owner: owner01)
Car.create!(brand: "Kia", model: "Niro", year: "2020", fuel: "Electric", owner: owner02)
Car.create!(brand: "Vauxhall", model: "Astra", year: "2019", fuel: "Petrol", owner: owner03)

# Output Results
puts "Done! #{Car.count} cars created!"
puts "Done! #{Owner.count} owners created!"
