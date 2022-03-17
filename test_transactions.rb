## Using update
test = TestObject.create(field: 'test')

ActiveRecord::Base.transaction do # Transaction by business logic
  test.update(field: 'test2')
  raise ActiveRecord::Rollback # something fails
end
test.update(updated_at: Time.current)

puts "when using update: #{test.reload.field}"
test.destroy


## Using assign + save
test = TestObject.create(field: 'test')

ActiveRecord::Base.transaction do # Transaction by business logic
  test.field = 'test2'
  test.save
  raise ActiveRecord::Rollback # something fails
end
test.update(updated_at: Time.current)

puts "when using assign + save: #{test.reload.field}"
test.destroy


