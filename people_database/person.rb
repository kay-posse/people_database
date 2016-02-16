class Person
  attr_reader :first_name, :last_name, :email, :state

  def initialize(person_data)
    @first_name = person_data[:first_name]
    @last_name = person_data[:last_name]
    @email = person_data[:email]
    @state = person_data[:state]
  end
end

class PeopleDatabase
  attr_reader :people

  def initialize(people)
    @people = people

  end

  def add(person_data)
    people << Person.new(person_data)
  end
end

a = PeopleDatabase.new([Person.new(first_name: "jim", last_name: "jones", email: "@gmail", state: "CO")])

a.add(first_name: "jim", last_name: "jones", email: "@gmail", state: "CO")
puts a.people.first.first_name 
