package norsys.main;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import common.math.Calculatrice;

public class Main{

	private final static Logger logger = LoggerFactory.getLogger(Main.class); 

	public static void main(String args[]){
		logger.info("Welcome to the HelloWorld example of SLF4J");

		String helloWorld = new String("Hello World ! ");
		Calculatrice calculatrice = new Calculatrice();
		System.out.println(helloWorld + calculatrice.somme(1,1));

	}
}