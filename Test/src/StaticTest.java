
public class StaticTest {

	public static String firstName = null;
	
	public static String lastName =  StaticTest.firstName + "york";
	
	static{
		System.out.println("first name:-"+firstName);
	}
		
	public static String getFirstName() {
		return firstName;
	}
	public static void setFirstName(String firstName) {
		StaticTest.firstName = firstName;
	}
	public static String getLastName() {
		return lastName;
	}
	public static void setLastName(String lastName) {
		StaticTest.lastName = lastName;
	}

}
