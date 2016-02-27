package java_tutorials.access;

class Caculator {
	private int left, right;
	
	public void Num(int left, int right){
		this.left = left;
		this.right = right;
	}
	private int sum(){
		return this.left + this.right;
	}
	private int avg(){
		return (this.left + this.right)/2;
	}
	public void show_sum(){
		System.out.println("++++" + sum() + "+++++");
	}
	public void show_avg(){
		System.out.println("++++" + avg() + "+++++");
	}
}

public class AccessDemo {

	public static void main(String[] args) {
		
	Caculator c1 = new Caculator();
		c1.Num(10,20);
		c1.show_sum();
		c1.show_avg();
	}

}
