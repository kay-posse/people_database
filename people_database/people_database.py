from person import Person

class PeopleDatabase:
    def __init__(self, x):
        self.people = []
        self.people.append(x)

    def add(self, first, last, em, st):
        person = Person(first, last, em, st)
        self.people.append(person)

    def people(self):
        return self.people


    def return_all_emails(self):
        new_list = []
        for i in self.people:
            new_list.append(i.email)
        return new_list

    def return_all_by_state(self, state):
        new_list = []
        for i in self.people:
            if i.state == state:
                new_list.append(i.first_name)

        return ", ".join(new_list)


    def remove_by_email(self, email):
        self.people = [x for x in self.people if x.email != email]

    def count_all_from_state(self, state):
        new_list = [x for x in self.people if x.state == state]
        return len(new_list)
