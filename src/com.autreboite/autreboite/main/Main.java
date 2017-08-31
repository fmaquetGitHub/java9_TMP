package autreboite.main;

import common.math.*;

public class Main{

	public static void main(String args[]){
		String helloWorld = new String("Hello World (autreboite) ! ");
		Calculatrice calculatrice = new Calculatrice();
		System.out.println(helloWorld + calculatrice.somme(2, 2));
	}
}
