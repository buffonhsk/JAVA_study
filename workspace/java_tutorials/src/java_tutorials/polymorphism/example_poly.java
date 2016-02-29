package java_tutorials.polymorphism;

interface father{};

interface mother{};

interface beliver{};

interface programmer{
	public void coding();
}

class Steve implements father, beliver, programmer{
	public void coding(){
		System.out.println("fast");
	}
}
class Rachel implements mother, programmer{
	public void coding(){
		System.out.println("elegance");
	}
}

public class example_poly {

	public static void main(String[] args) {
		
		programmer employee1 = new Steve();
		programmer employee2 = new Rachel();
		employee1.coding();
		employee2.coding();
	}

}
