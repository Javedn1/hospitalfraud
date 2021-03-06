package com.privacyprotection;

import java.util.Random;

public class RandomStr {
	private static final String CHAR_LIST =
	        "1234567890";
	    private static final int RANDOM_STRING_LENGTH = 5;
	     
	    /**
	     * This method generates random string
	     * @return
	     */
	    public String generateRandomString(){
	         
	        StringBuffer randStr = new StringBuffer();
	        for(int i=0; i<RANDOM_STRING_LENGTH; i++){
	            int number = getRandomNumber();
	            char ch = CHAR_LIST.charAt(number);
	            randStr.append(ch);
	        }
	        return randStr.toString();
	    }
	
	    private int getRandomNumber() {
	        int randomInt = 0;
	        Random randomGenerator = new Random();
	        randomInt = randomGenerator.nextInt(CHAR_LIST.length());
	        if (randomInt - 1 == -1) {
	            return randomInt;
	        } else {
	            return randomInt - 1;
	        }
	    }
	     
	    public static void main(String a[]){
	        RandomStr msr = new RandomStr();
	        System.out.println(msr.generateRandomString());
	 
	    }

}
