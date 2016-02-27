package java_tutorials.inheritance;

class Caculator{
	int left, right;
	
	public Caculator(){}
	
	public Caculator(int left, int right){
		this.left = left;
		this.right = right;
	}
	
	public void sum(){
		System.out.println(this.left + this.right);
	}
	public void avg(){
		System.out.println((this.left + this.right)/2);
	}
}
class multi extends Caculator{
	public multi(int left, int right){
		super(left, right);
	}
	public void multiple(){
		System.out.println(this.left * this.right);
	}
	public void sum(){
		
		System.out.println("자식의 합이" + (this.left + this.right) +"입니다.");
	}
}
class multi3 extends multi {
	public multi3(int left, int right){
		super(left, right);
	}
	public void multiple2(){
		System.out.println(this.left * this.right);
	}

}

public class inheritance {

	
	public static void main(String[] args) {
		
		
		multi c1 = new multi(10, 20);
		c1.sum();
		c1.avg();
		c1.multiple();
		
		multi3 c2 = new multi3(20, 30);
		c2.sum();
	}

}
