package bean;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class UserDetails {
	
	private Resources resources;
	
	private List<List<Map<String,Object>>> userMap=new ArrayList<List<Map<String,Object>>>();

	public Resources getResources() {
		return resources;
	}

	public void setResources(Resources resources) {
		this.resources = resources;
	}

	public List<List<Map<String, Object>>> getUserMap() {
		return userMap;
	}

	public void setUserMap(List<List<Map<String, Object>>> userMap) {
		this.userMap = userMap;
	}

   
		
}
