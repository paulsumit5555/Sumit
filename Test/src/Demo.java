import java.util.ArrayList;
import java.util.List;



public class Demo {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		long total = 0;
	    final int maxCount = 100;
 System.out.println("from testbranch");
	    for (int count = 0; count < maxCount; count++)
	    {
	        final long t1 = System.currentTimeMillis();

	        final int max = 2000;
	        final List<Integer> list = new ArrayList<Integer>();
	        for (int index = 1; index <= max; index++)
	        {
	            list.add(index);
	        }

	        final List<Integer> doub = new ArrayList<Integer>();
	        for (Integer value : list)
	        {
	            doub.add(value * 2);
	        }

	        for (Integer value : doub)
	        {
	            System.out.println(value);
	        }

	        final long t2 = System.currentTimeMillis();

	        System.out.println("Elapsed milliseconds: " + (t2 - t1));
	        total += t2 - t1;
	    }

	    System.out.println("Average milliseconds: " + (total / maxCount));
		
	}

}
