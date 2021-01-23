package test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import DAO.McsiDomainDAO;




public class TestMcsiDomainDao {

	public static void main(String[] args) {
		
	
	    ApplicationContext context = new ClassPathXmlApplicationContext("dispatcher-servlet.xml");
	    McsiDomainDAO testcdm = (McsiDomainDAO) context.getBean("mcsiDomainDAO");
	
	    
	    List customerLinkIdList=testcdm.selectDomain("130592");
	    System.out.print("List Description :" +customerLinkIdList);
	}

}


