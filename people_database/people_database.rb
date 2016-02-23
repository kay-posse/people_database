require_relative "person"

class PeopleDatabase
  attr_reader :people

  def initialize(people)
    @people = []
    @people << people

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
