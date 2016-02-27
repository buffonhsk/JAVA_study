package java_tutorials.object;

class test{
	int v = 10;
	void a(){
		int v = 1;
		System.out.print(v);
	}
}

public class ScopeDemo {
	
	public static void main(String[] args) {
		test b = new test();
		b.a();
		
	}

}
