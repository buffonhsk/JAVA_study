package java_tutorials.object;

class Caculator2{
	int left, right;
	public static void sum(int left, int right){
		
		System.out.println(left + right);
	}
	public static void avg(int left, int right){
		
		System.out.println((left + right)/2);
	}

}

public class Caculator1Demo {

	public static void main(String[] args) {
		
		Caculator2.sum(10, 20);
		Caculator2.avg(30, 40);
	}

}
