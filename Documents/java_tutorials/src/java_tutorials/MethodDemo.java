package java_tutorials;

public class MethodDemo {

	public static String[] ArrayM(){
		
		String[] member = { "김동현", "이지용", "강희승" };
		return member;
	}
	
	public static void main(String[] args) {
	
		for(String e : ArrayM()){
			System.out.println(e);
		}
		
		
	}

}
