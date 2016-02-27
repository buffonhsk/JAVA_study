package java_tutorials.overloading;



class Caculator{
	int left, right;
	int third = 0;
	String s,f;
	
	public void value(String s,String f){
		this.s = s;
		this.f = f;
		System.out.println(this.s + this.f);
	}
	public void value(int left, int right){
		this.left = left;
		this.right = right;
	}
	public void value(int left, int right, int third){
		this.left = left;
		this.right = right;
		this.third = third;
	}
	
	public void sum(){
		System.out.println(this.left + this.right + this.third);
		
	}
	
	public void avg(){
		System.out.println((this.left + this.right + this.third)/3);
		
	}
}

public class overloading {

	public static void main(String[] args) {
		
		
		Caculator c1 = new Caculator();
		c1.value(10,20);
		c1.sum();
		c1.avg();
		
		
		c1.value(30, 30, 45);
		c1.sum();
		c1.avg();
		
		c1.value("good", "morning");
		
	}

}
