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

  def remove_by_email(email)
    people.delete_if do |person|
      person.email == email
    end

  end

  def return_all_by_state(state)
    people.select do |person|
      person.state == state
    end
  end

  def return_all_emails
    people.map do |person|
      person.email
    end.join(", ")
  end

  def count_all_from_state(state)
    return_all_by_state(state).count
  end

end
a = PeopleDatabase.new([Person.new(first_name: "jim", last_name: "jones", email: "123@gmail", state: "CO")])

a.add(first_name: "jim", last_name: "fine", email: "456@gmail", state: "PA")
a.add(first_name: "susan", last_name: "fine", email: "478@gmail", state: "PA")

# puts a.people

# a.remove_by_email("456@gmail")

# puts a.people

# puts a.return_all_by_state("CO").first.state

# puts a.return_all_emails

puts a.count_all_from_state("PA")
