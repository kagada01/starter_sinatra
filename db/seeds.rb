Owner.destroy_all
Car.destroy_all


john = Owner.create(name: "John")
marcus = Owner.create(name: "Marcus")
dan = Owner.create(name: "Dan")


Car.create(make: "Porsche", model: "918", year: 2018, owner_id: marcus.id)
Car.create(make: "Toyota", model: "Tacoma", year: 1995,owner_id: marcus.id)

Car.create(make: "BMW", model: "X5", year: 2016, owner_id: john.id)
Car.create(make: "Toyota", model: "Corrola", year: 2000, owner_id: john.id)

Car.create(make: "Ford", model: "F-150", year: 2015, owner_id: dan.id)
Car.create(make: "Mercedes", model: "E550", year: 2017, owner_id: dan.id)
