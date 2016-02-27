package java_tutorials.constructor;

class Caculator{
	int left, right;
	
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


public class Constructor {

	public static void main(String[] args) {
		
		Caculator c1 = new Caculator(10, 20);
		c1.sum();
		c1.avg();

	}

}
