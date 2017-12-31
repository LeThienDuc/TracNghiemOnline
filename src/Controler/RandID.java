package Controler;

import java.util.Random;

public class RandID {
	public static int rand() {
		try {
			Random rn = new Random();
			int range = 100;
			int randomNum =1511 + rn.nextInt(range);
			return randomNum;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}
	public static int randQES() {
		try {
			Random rn = new Random();
			int range = 200;
			int randomNum =1300 + rn.nextInt(range);
			return randomNum;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}
	public static int randExam() {
		try {
			Random rn = new Random();
			int range = 100;
			int randomNum =900 + rn.nextInt(range);
			return randomNum;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}
	public static int ResultExam() {
		try {
			Random rn = new Random();
			int range = 100;
			int randomNum =500 + rn.nextInt(range);
			return randomNum;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

}
