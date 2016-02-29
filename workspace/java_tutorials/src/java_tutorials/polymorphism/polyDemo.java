package java_tutorials.polymorphism;

class O{
	public void a(int Param){
		System.out.println("숫자출력");
		System.out.println(Param);
	}
	public void a(String Param){
		System.out.println("문자출력");
		System.out.println(Param);
	}
}

public class polyDemo {

	public static void main(String[] args) {
		O o = new O();
		o.a(1);
		o.a("one");

	}

}
