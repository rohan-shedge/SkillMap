package bean;

import java.util.List;
import java.util.Map;

public class McsiDomain {
	
	private String empId;
	private List<Map<String,Object>> resultMap;
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public List<Map<String, Object>> getResultMap() {
		return resultMap;
	}
	public void setResultMap(List<Map<String, Object>> resultMap) {
		this.resultMap = resultMap;
	}
	
}
