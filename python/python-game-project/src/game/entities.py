class Player:
    def __init__(self, health=100, position=(0, 0)):
        self.health = health
        self.position = position

    def move(self, x, y):
        self.position = (self.position[0] + x, self.position[1] + y)

    def attack(self):
        # Implement attack logic here
        pass


class Enemy:
    def __init__(self, health=50, position=(0, 0)):
        self.health = health
        self.position = position

    def move(self, x, y):
        self.position = (self.position[0] + x, self.position[1] + y)

    def attack(self):
        # Implement attack logic here
        pass