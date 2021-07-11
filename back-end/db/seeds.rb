puts "Clearing old data..."
Category.destroy_all
Task.destroy_all

puts "Seeding Categories..."

# create categories
Category.create(name: 'Code')
Category.create(name: 'Food')
Category.create(name: 'Money')
Category.create(name: 'Misc')


puts "Seeding tasks..."
category_id_code = Category.find_by(name: 'Code').id
category_id_food = Category.find_by(name: 'Food').id
category_id_money = Category.find_by(name: 'Money').id
category_id_misc = Category.find_by(name: 'Misc').id



# create tasks
Task.create(text: 'Buy rice', category_id: category_id_food )
Task.create(text: 'Save a tenner', category_id: category_id_money )
Task.create(text: 'Build a todo app', category_id: category_id_code )
Task.create(text: 'Build a todo API', category_id: category_id_code)
Task.create(text: 'Get an ISA', category_id: category_id_money )
Task.create(text: 'Cook rice', category_id: category_id_food)
Task.create(text: 'Tidy house', category_id: category_id_misc )
Task.create(text: 'code', category_id: category_id_code )


puts "Done!"