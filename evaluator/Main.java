public class Main {
    public static void main(String[] args) {
	ImmutableList lst1 = new Nil(); // []
	Cons lst2 = new Cons(1, lst1); // [1]
	ImmutableList lst3 = new Cons(2, lst2); // [2, 1]
	ImmutableList lst4 = new Cons(3, lst2); // [3, 1]
    }
}
