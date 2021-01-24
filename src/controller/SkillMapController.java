package controller;

import java.util.ArrayList;
import java.lang.reflect.*;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import DAO.AverageDAO;
import DAO.McsiDomainDAO;
import DAO.ProcessDAO;
import DAO.ResourceDAO;
import DAO.TelenetknowledgeDAO;
import DAO.ToolTechnologyDAO;
import bean.McsiDomain;
import bean.Resources;
import bean.TelenetKnowledge;
import bean.ToolTechnology;
import bean.UserDetails;
import bean.Average;



/**
 * Servlet implementation class SkillMapController
 */
@SuppressWarnings("deprecation")
public class SkillMapController extends SimpleFormController {
	private static final long serialVersionUID = 1L;
	public float groupG1avg=0.0f;
	public float groupG2avg=0.0f;
	public float groupG3avg=0.0f;
	public float groupG4avg=0.0f;
	public float groupG5avg=0.0f;
	public float groupG6avg=0.0f;
	public float groupG7avg=0.0f;
	public float groupAvg=0.0f;
	public float groupG=0.0f;
	public int count1=0,count2=0,count3=0,count4=0,count5=0,count6=0,count7=0;
	
	 
	public SkillMapController() {
    	System.out.println("i am in constructor");
    	setCommandClass(Resources.class); 
    	setCommandName("userme"); 
  }   
    
	@Override
	protected ModelAndView onSubmit(Object command){
		Resources userResource = (Resources) command;
        System.out.println("i am in Modal class");
        UserDetails userDetails=new UserDetails();
        userDetails.setResources(userResource);
        String empId=userDetails.getResources().getEmpId();
        try{
     
        
        ResourceDAO resourceDAO=(ResourceDAO)getApplicationContext().getBean("resourceDAO");
        List<Map<String, Object>> resourcesMap=resourceDAO.selectResource(empId);
        userDetails.getUserMap().add(resourcesMap);
        

        
        ProcessDAO processDAO=(ProcessDAO)getApplicationContext().getBean("processDAO");
        List<Map<String,Object>> ProcessMap=processDAO.selectDomain(empId);
        userDetails.getUserMap().add(ProcessMap);

        TelenetknowledgeDAO telenetknowledgeDAO=(TelenetknowledgeDAO)getApplicationContext().getBean("telenetKnowledgeDAO");
        List<Map<String,Object>> telenetknowledgeMap=telenetknowledgeDAO.selectDomain(empId);
        userDetails.getUserMap().add(telenetknowledgeMap);
        
        ToolTechnologyDAO toolTechnologyDAO=(ToolTechnologyDAO)getApplicationContext().getBean("toolTechnologyDAO");
        List<Map<String,Object>> toolTechnologyMap=toolTechnologyDAO.selectDomain(empId);
        userDetails.getUserMap().add(toolTechnologyMap);

        McsiDomainDAO mcsiDomainDAO=(McsiDomainDAO)getApplicationContext().getBean("mcsiDomainDAO");
        List<Map<String,Object>> mcsiDomainMap=mcsiDomainDAO.selectDomain(empId);
        userDetails.getUserMap().add(mcsiDomainMap);
       
   //Extracting the Domain name of the Resource...which is used for fetching from  domain_values_business_expected table
       String domainName="";
       domainName=(String) userDetails.getUserMap().get(0).get(0).get("CORETRACK");  
       AverageDAO averageDAO=(AverageDAO)getApplicationContext().getBean("averageDAO");
       List<Map<String,Object>> avarageMap=averageDAO.selectDomain(domainName);        
       userDetails.getUserMap().add(avarageMap);
       
    //Extracting the individual values corresponda	ing to the respective domain property
       System.out.println("work start");
       String  groupName="";

       int groupSpecificAvg=0;
       float tempgrp=0;
       int tempcnt=0;
       int j=0;
       Field fg,fc;
		 float groupG1avg=0.0f;
		 float groupG2avg=0.0f;
		 float groupG3avg=0.0f;
		 float groupG4avg=0.0f;
		 float groupG5avg=0.0f;
		 float groupG6avg=0.0f;
		 float groupG7avg=0.0f;
		 float groupAvg=0.0f;
		 float groupG=0.0f;
		 int count1=0,count2=0,count3=0,count4=0,count5=0,count6=0,count7=0;
       
       for(int i=0;i<userDetails.getUserMap().get(5).size();i++)
       {
    	   groupName=(String) userDetails.getUserMap().get(5).get(i).get("GroupName");
    	   groupSpecificAvg=(Integer) userDetails.getUserMap().get(4).get(0).get(userDetails.getUserMap().get(5).get(i).get("GroupSpecific"));
    	   System.out.println("groupname"+groupName);
    	   System.out.println(groupSpecificAvg);
    	   /*  	   j=Integer.parseInt(groupName.charAt(1)+"");
    	   
    	   fg=this.getClass().getField("groupG"+j + "avg");
    	   fc=this.getClass().getField("count"+j);
    	   tempgrp = groupSpecificAvg + fg.getFloat(this);
    	   tempcnt= 1+fc.getInt(this);
    	   fg.setFloat(this, tempgrp);
    	   fc.setInt(this,tempcnt);*/
    	   

  	   
   	   tempgrp = groupG+j;
    	   
    	  switch(groupName.charAt(1))
    	  {
    	  case '1':     	 
    		  groupG1avg+=groupSpecificAvg;
    		   count1++;
    		   break;    		   
    	  case '2':    	
    		   groupG2avg+=groupSpecificAvg;
    		   count2++;
    		   break;
    	  case '3':	    	  
    		   groupG3avg+=groupSpecificAvg;
    		   count3++;    		   
    		   break;
    	  case '4':    	  
    		   groupG4avg+=groupSpecificAvg;
    		   count4++;
    		   break;
    	  case '5':   	  
    		   groupG5avg+=groupSpecificAvg;
    		   count5++;
    		   break;
    	  case '6':   	 
    		   groupG6avg+=groupSpecificAvg;
    		   count6++;
    		   break;
    	  case '7':   	  
    		   groupG7avg+=groupSpecificAvg;
    		   count7++;
    		   break;
    	}     	   
   
    	   
     
       
       }   
    
       
	   groupG1avg=groupG1avg/count1;
	   groupG2avg=groupG2avg/count2;
	   groupG3avg=groupG3avg/count3;
	 
	   groupG4avg=groupG4avg/count4;
	   groupG5avg=groupG5avg/count5;
	   groupG6avg=groupG6avg/count6;
	   groupG7avg=groupG7avg/count7;
       //Calculating the average of Groups
       float simpleAvgOfGroups=0.0f;
       groupAvg=(groupG1avg + groupG2avg + groupG3avg + groupG4avg + groupG5avg + groupG6avg + groupG7avg)/(7);
       Map<String,Object> simplegroupAvg=new HashMap<String, Object>();
       simplegroupAvg.put("GroupAvg",groupAvg);
       List<Map<String,Object>> simpleAvglist=new ArrayList<Map<String,Object>>();
       simpleAvglist.add(simplegroupAvg);
       
  //Calculating the Simple Average
  //----------------------------------------------------------------------------------------------------
       //simple average of process
       float simpleAverageProcess=0.0f;
       Object[] processList= ProcessMap.get(0).values().toArray();
       for(int i=0;i<processList.length;i++)
       {
    	   			
    	   simpleAverageProcess+=(Integer)processList[i];
    	   			
       }
       
       simpleAverageProcess = simpleAverageProcess/ProcessMap.get(0).size();
       
     //simple average of Telenet Knowledge
       float simpleAverageTelenetKnowledge=0.0f;
       Object[] tkList= ProcessMap.get(0).values().toArray();
       for(int i=0;i<tkList.length;i++)
       {
    	   			
    	   simpleAverageTelenetKnowledge+=(Integer)tkList[i];
    	   			
       }
       
       simpleAverageTelenetKnowledge = simpleAverageTelenetKnowledge/telenetknowledgeMap.get(0).size();
       
       //simple average of ToolTechnology
       float simpleAverageToolTechnology=0.0f;
       Object[] ToolTechnologylist= ProcessMap.get(0).values().toArray();
       for(int i=0;i<ToolTechnologylist.length;i++)
       {
    	   			
    	   simpleAverageToolTechnology+=(Integer)ToolTechnologylist[i];
    	   			
       }
       
       simpleAverageToolTechnology = simpleAverageToolTechnology/toolTechnologyMap.get(0).size();
       
       
       //simple average of MCSI Domain
       float simpleAverageMCSIDomain=0.0f;
       Object[] simpleAverageMCSIDomainlist= ProcessMap.get(0).values().toArray();
       for(int i=0;i<simpleAverageMCSIDomainlist.length;i++)
       {
    	   			
    	   simpleAverageMCSIDomain+=(Integer)simpleAverageMCSIDomainlist[i];
    	   			
       }
       
       simpleAverageMCSIDomain = simpleAverageMCSIDomain/mcsiDomainMap.get(0).size();
       
       //Calculating the average
       float avg;
       avg=(simpleAverageProcess+ simpleAverageTelenetKnowledge + simpleAverageToolTechnology + simpleAverageMCSIDomain)/4;
       Map<String,Object> simpleAvg=new HashMap<String, Object>();
       simpleAvg.put("simpleAvg",avg);
       simpleAvglist.add(simpleAvg);
       
 //----------------------------------------------------------------------------------------------------      
       
       
       
       userDetails.getUserMap().add(simpleAvglist);
       //simpleAvglist.add(simplegroupAvg);
       
    	return new ModelAndView("skillHome","userme",userDetails);		
		
        }catch(Exception e)
        {
        	e.printStackTrace();
           System.out.println("EmpId does not exist");
           return new ModelAndView("Error","userme",userDetails);
        }
	
	}




}
