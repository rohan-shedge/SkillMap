package DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import bean.Process;

public class ProcessDAO {
	
	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectDomain(String empId) {
		
		Map<String,Object> processMap=new HashMap<String,Object>();
		String query = "SELECT Skillfactor,SkillValue FROM process WHERE EMPID=? and Status='C'";
		
		List<Map<String,Object>> rows = (jdbcTemplate.queryForList(query, empId));
		
		for (Map row : rows) {
			processMap.put((String)row.get("Skillfactor"), row.get("SkillValue"));
		}
  
		List<Map<String,Object>> domain=new ArrayList<Map<String,Object>>();
		domain.add(processMap);
		return domain;
		
						
	}



}

