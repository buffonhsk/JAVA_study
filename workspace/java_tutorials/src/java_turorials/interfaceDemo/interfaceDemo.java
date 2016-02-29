package java_turorials.interfaceDemo;

interface Calculator{
	
	public void setOprands(int first, int second, int third);
	public int sum();
	public int avg();
}

class CalculatorDummy implements Calculator{
	int first, second, third;
	public void setOprands(int first, int second, int third){
		this.first = first;
		this.second = second;
		this.third = third;
	}
	public int sum(){
		 return this.first + this.second + this.third;
	}
	public int avg(){
		return (this.first + this.second + this.third) / 3;
	}
}

public class interfaceDemo {

	public static void main(String[] args) {
		
		CalculatorDummy c1 = new CalculatorDummy();
		c1.setOprands(10, 20, 30);
		System.out.print(c1.sum()+c1.avg());

	}

}
