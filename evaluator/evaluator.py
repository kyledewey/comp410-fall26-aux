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
# self/this: in a constructor, the object being constructed
# self == this
class Integer:
    def __init__(self, value):
        self.value = value

# TODO: define classes for +, -, *
