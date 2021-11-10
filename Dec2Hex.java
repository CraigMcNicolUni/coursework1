import java.util.Scanner;

class Dec2Hex
{

    public static int Arg1;

    public static void main(String args[])
    {
	if ( Arg1 == (int)Arg1)
	{ 
 	try{
		Arg1 = Integer.parseInt(args[0]);
	}
	catch (NumberFormatException nfe){
		System.out.println("Enter a number");
		System.exit(0);
	}

        Arg1 = Integer.parseInt(args[0]);
        char ch[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
        int rem, num;
        num = Arg1;
	{
        	String hexadecimal="";
        	System.out.println("Converting the Decimal Value " + num + " to Hex...");

        	while(num != 0)
        	{	
            		rem=num%16;
            		hexadecimal= ch[rem] + hexadecimal;
            		num= num/16;
        	}	

        	System.out.println("Hexadecimal representation is: " + hexadecimal);
	}
    	} else {
	       System.out.println("ERROR! integer is required");
       		System.exit(0);
	}		

}
}
