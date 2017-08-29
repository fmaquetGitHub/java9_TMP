package norsys.main;

import common.math.*;
import java.lang.reflect.*;

public class Main{

	public static void main(String args[]){
		String helloWorld = new String("Hello World ! ");
		Calculatrice calculatrice = new Calculatrice();

		// Appel de la methode public aireCercle
		System.out.println(helloWorld + calculatrice.aireCercle(1.5));

		try{	
			// Tentative d'appel de la methode privee carre
			Method method = calculatrice.getClass().getDeclaredMethod("carre", Double.TYPE);
			method.setAccessible(true);
			double carre = (double) method.invoke(calculatrice, 2.0);
			System.out.println("carre  = " + carre);

		}catch(Exception e){
			// NoSuchMethodException, IllegalAccessException, InvocationTargetException
			System.out.println("l'utilisation de la methode carre a foirée  ... andouille !");

		}

	}
}