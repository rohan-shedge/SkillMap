package test;

import java.lang.reflect.Field;

public class Test2 {
	public float groupG1=0.0f;
    float groupG2=0.0f;
    float groupG3=0.0f;
    float groupG4=0.0f;
    float groupG5=0.0f;
    float groupG6=0.0f;
    float groupG7=0.0f;
    float groupAvg=0.0f;
    float groupG=0.0f;
    
    public static void main(String args[]){
    	
    	try {
    	Field fg,fc;
    	Test2 t=new Test2();
    	fg=t.getClass().getField("groupG"+1);
 	   fc=t.getClass().getField("count"+1);
 	   
 	   float tempgrp=0;
 	   tempgrp = 5 + fg.getFloat(t);
    	}
    	catch(Exception e){
    		e.printStackTrace();
    	}
    }

	
}
