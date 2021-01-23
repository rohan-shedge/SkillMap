package DAO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class McsiDomainDAO {
	
	private JdbcTemplate jdbcTemplate;


	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectDomain(String empId) {
		
		Map<String,Object> mcsiDomainMap=new HashMap<String,Object>();
		
		String query = "SELECT Skillfactor,SkillValue FROM mcsi_domain WHERE EMPID=? and Status='C'";
		
		List<Map<String,Object>> rows = (jdbcTemplate.queryForList(query, empId));
		
		for (Map row : rows) {
			mcsiDomainMap.put((String)row.get("Skillfactor"), row.get("SkillValue"));
		}
  
		List<Map<String,Object>> domain=new ArrayList<Map<String,Object>>();
		domain.add(mcsiDomainMap);
		return domain;
		
						
	}


}
