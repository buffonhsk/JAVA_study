package java_tutorials.polymorphism;

abstract class Calculator{
	int first, second;
	public void setOprands(int first, int second){
		this.first = first;
		this.second = second;
	};
	int _sum(){
		return this.first + this.second;
	}
	public abstract void sum();
	public abstract void avg();
	public void run(){
		sum();
		avg();
	}
	
}
class Calcu_plus extends Calculator{
	public void sum(){
		System.out.print("+sum" + _sum()); 
	}
	public void avg(){
		System.out.println("+avg" + _sum()/2);
	}
}
class Calcu_minus extends Calculator{
	public void sum(){
		System.out.print("-sum" + _sum()); 
	}
	public void avg(){
		System.out.println("-avg" + _sum()/2);
	}
}


public class polyDemo1 {
	
	public static void excute(Calculator cal){
		System.out.println("실행결과");
		cal.run();
	}

	public static void main(String[] args) {
		Calculator c1 = new Calcu_plus();
		c1.setOprands(10, 20);
		
		Calculator c2 = new Calcu_minus();
		c2.setOprands(20, 30);
		
		excute(c1);
		excute(c2);
		
	}

}
