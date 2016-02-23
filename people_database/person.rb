class Person
  attr_reader :first_name, :last_name, :email, :state

  def initialize(person_data)
    @first_name = person_data[:first_name]
    @last_name = person_data[:last_name]
    @email = person_data[:email]
    @state = person_data[:state]
  end
end
<<<<<<< HEAD

class PeopleDatabase
  attr_reader :people

  def initialize(people)
    @people = people

  end

  def add(person_data)
    people << Person.new(person_data)
  end
end

a = PeopleDatabase.new([Person.new(first_name: "Jim", last_name: "jones", email: "jim@gmail", state: "CO")])

a.add(first_name: "Frank", last_name: "Lee", email: "frank@gmail", state: "TN")
a.add(first_name: "Martha", last_name: "Lee", email: "martha@gmail", state: "AK")
puts a.people.first.first_name
=======
>>>>>>> fbd08970c56e918f78e1ee0ba5a6f90bb654f4e7
