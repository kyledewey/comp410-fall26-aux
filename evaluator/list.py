class Nil:
    def __init__(self):
        pass

class Cons:
    def __init__(self, head, tail):
        self.head = head
        self.tail = tail

lst1 = Nil()
lst2 = Cons(1, lst1)
lst3 = Cons(2, lst2)
lst4 = Cons(3, lst2)

