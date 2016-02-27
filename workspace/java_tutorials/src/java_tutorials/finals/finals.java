package java_tutorials.finals;

class finals2 {
	static final double PI = 3.14;
	int left, right;
	
	public void setOprands(int left, int right){
		this.left = left;
		this.right = right;
	}
	public void sum(){
		System.out.println( this.left + this.right);
	}
	public void PI2(){
		//finals2.PI = 1;
		System.out.println(this.left * PI);
	}
}

public class finals {

	public static void main(String[] args) {
		
		finals2 c1 = new finals2();
		c1.setOprands(10, 20);
		c1.PI2();
		c1.sum();

	}

}
