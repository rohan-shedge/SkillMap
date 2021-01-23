package bean;

import java.util.List;
import java.util.Map;

public class TelenetKnowledge 
{
	private String EmpId ;              
	private List<Map<String,Object>> resultMap;
	private float avg;
	public String getEmpId() {
		return EmpId;
	}
	public void setEmpId(String empId) {
		EmpId = empId;
	}
	public List<Map<String, Object>> getResultMap() {
		return resultMap;
	}
	public void setResultMap(List<Map<String, Object>> resultMap) {
		this.resultMap = resultMap;
	}
	public float getAvg() {
		return avg;
	}
	public void setAvg(float avg) {
		this.avg = avg;
	}
	
	
	
	

}
