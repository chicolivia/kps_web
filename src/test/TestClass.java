package test;

public class TestClass {

	public static void main(String[] args) {
		int randomNum = (int) (Math.random()*9999 +1);
		System.out.println((randomNum+"").substring(0, 4));
	}
}
