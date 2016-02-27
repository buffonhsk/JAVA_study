package java_tutorials.abstracts;

abstract class Caculator{
	int left, right;
	
	public void setOprands(int left, int right){
		this.left = left;
		this.right = right;
	}
	
	int _sum(){
		return this.left + this.right;
	}
	
	public abstract void sum();
	public abstract void avg();
	public void run(){
		avg();
		sum();
	}
	
}

class Caculator2 extends Caculator{
	
	public void sum(){
		System.out.println("+ sum" + _sum());
	}
	public void avg(){
		System.out.println("+ avg" + _sum()/2);
	}	
}


public class abstracts {

	public static void main(String[] args) {
		
		Caculator2 c1 = new Caculator2();
		c1.setOprands(10, 20);
		c1.run();

	}

}
