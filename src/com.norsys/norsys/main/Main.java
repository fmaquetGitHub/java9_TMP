package norsys.main;

import common.math.*;

public class Main{

	public static void main(String args[]){
		String helloWorld = new String("Hello World (norsys) ! ");
		Calculatrice calculatrice = new Calculatrice();
		System.out.println(helloWorld + calculatrice.somme(1, 1));
	}
}
