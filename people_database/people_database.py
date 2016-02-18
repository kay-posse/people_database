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


# database = PeopleDatabase(Person("jon", "liss", "j@email", "CO"))
# database.add("notjon", "notliss", "notme@email", "PA")
# database.add("drew", "thompson", "bike@email", "IN")
# database.add("jon", "bernesser", "sloop@email", "NY")
# database.add("fakefirst", "fakelast", "fake@email", "PA")

# print database.return_all_emails()

# print database.return_all_by_state("CO")

# database.remove_by_email("j@email")
#
# print database.return_all_emails()

# print database.count_all_from_state("PA")



# for i in database.people:
#     print i.first_name
