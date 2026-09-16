# evaluator of arithmetic expressions

# Context-free grammar
# BNF Grammar - Backus-Naur form
# EBNF Grammar - Extended Backus-Naur form
#
# exp Rule (expression)
#
# exp ::= INTEGER |
#         exp `+` exp |
#         exp `-` exp |
#         exp `*` exp

# public class Integer {
#   public int value;
#   public Integer(int value) {
#     this.value = value;
#   }
# }
#
class Integer:
    def __init__(self, value):
        self.value = value

class Plus:
    def __init__(self, left, right):
        self.left = left
        self.right = right

class Minus:
    def __init__(self, left, right):
        self.left = left
        self.right = right
        
class Mult:
    def __init__(self, left, right):
        self.left = left
        self.right = right
    
def evaluate(ast):
    if isinstance(ast, Integer):
        return ast.value
    elif isinstance(ast, Plus):
        return evaluate(ast.left) + evaluate(ast.right)
        #return ast.left.value + ast.right.value
    elif isinstance(ast, Minus):
        return evaluate(ast.left) - evaluate(ast.right)
    elif isinstance(ast, Mult):
        return evaluate(ast.left) * evaluate(ast.right)

class Literal:
    def __init__(self, name, is_positive):
        self.name = name
        self.is_positive = is_positive

class And:
    def __init__(self, left, right):
        self.left = left
        self.right = right

class Or:
    def __init__(self, left, right):
        self.left = left
        self.right = right
        
# FOR monday: cons/nil (lists)
