package bean;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Resources {
	
	private String empId;       

	private List<Map<String,Object>> resultMap;
	private String message;
	
	
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public List<Map<String,Object>> getResultMap() {
		return resultMap;
	}
	public void setResultMap(List<Map<String,Object>> resultMap) {
		this.resultMap = resultMap;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
	
	

}
