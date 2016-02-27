package java_tutorials;

public class ConditionDemo {

	public static void main(String[] args) {
		
		String id = args[0];
		String pw = args[1];
		
		if(id.equals("hsk")){
			if(pw.equals("1234")){
				System.out.println("right");
			}else{
				System.out.println("wrong");
			}
		}else{
			System.out.println("false");
		}
		
	}

}
