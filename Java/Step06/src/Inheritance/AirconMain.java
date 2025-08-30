package Inheritance;

import java.util.Iterator;

public class AirconMain {

	public static void main(String[] args) {
		Aircondition Air = new Aircondition(18, 1, 1);
		for(int i= 0; i<10; i++)
			Air.Tempup();
		for(int i= 0; i<10; i++)
			Air.Tempdown();
		for(int i= 0; i<10; i++)
			Air.mode();
		for(int i= 0; i<10; i++)
			Air.windPower();
		System.out.println("-------------삼성에어컨-------------");
		SamsungAir Sa = new SamsungAir(18, 1, 1);
		for(int i= 0; i<10; i++)
			Sa.Tempup();
		for(int i= 0; i<10; i++)
			Sa.Tempdown();
		for(int i= 0; i<10; i++)
			Sa.mode();
		for(int i= 0; i<10; i++)
			Sa.windPower();
		
	}
		

}
