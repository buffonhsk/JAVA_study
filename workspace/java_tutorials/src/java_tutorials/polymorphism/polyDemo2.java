package java_tutorials.polymorphism;

interface I2{
	public  String z();
}

interface I3{
	public String y();
}

class D implements I2, I3{
	public String z(){
		return "Z";
	}
	public String y(){
		return "Y";
	}
}

public class polyDemo2 {

	public static void main(String[] args) {
		D obj = new D();
		I2 obj2 = new D();
		I3 obj3 = new D();
		
		obj.z();
		obj2.z();
		obj3.y();
	}

}
