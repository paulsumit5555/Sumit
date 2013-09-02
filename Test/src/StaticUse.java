
public class StaticUse {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		StaticTest.firstName = "Roy";
		System.out.println("first name:-"+StaticTest.getFirstName());
		System.out.println(StaticTest.getLastName());
		
		Demo demo = new Demo();
		StaticTest test = new StaticTest();
		//demo + test;

	}

}
