package java_tutorials.object;



class Caculator {
	static double PI = 3.14;
	static int base = 0;
	int left, right;
	
	public void addNum(int left, int right){
		this.left = left;
		this.right = right;
		
	}

	public void sum(){
		
		System.out.println(this.left + this.right + base);
	}
	
	public void avg(){
		
		System.out.println((this.left + this.right)/2);
	}

//	public void substract() {
//		
//		System.out.println(this.left - this.right);
//		
//	}
	
}
class substractCaculator extends Caculator{
	public void substract(){
		System.out.println(this.left - this.right);
	}
}
//class divisionableCaculator extends substractCaculator(){
//	public void division(){
//		System.out.println(this.left/this.right);
//	}
//} substractCaculator의 자식 에러뜸..

//class MultiCaculator extends Caculator{
//	public void multi(){
//		System.out.println(this.left * this.right);
//	}
//} 상속 받고 자식들을 실행 하고 싶다..
	public class CaculatorDemo {	
		public static void main(String[] args) {
		
	
//		divisionableCaculator c1 = new divisionableCaculator();
//		c1.addNum(10, 20);
//		c1.sum();
//		c1.avg();
//		c1.substract();
		//c1.multi();
		
		
		Caculator c2 = new Caculator();
		c2.addNum(30, 40);
		c2.sum();
		c2.avg();
		}
		
}
