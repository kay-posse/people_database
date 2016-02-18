class Person:
    def __init__(self, first, last, em, st):
        self.first_name = first
        self.last_name = last
        self.email = em
        self.state = st

    def first_name(self):
        return self.first_name


    def last_name(self):
        return self.last_name

    def email(self):
        return self.email

    def states(self):
        return self.state

    def info(self):
        return [self.first_name, self.last_name, self.email, self.state]
