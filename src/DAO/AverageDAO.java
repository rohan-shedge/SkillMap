package DAO;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import bean.Average;

public class AverageDAO
{
	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectDomain(String DomainName) {
		
		String query = "SELECT GroupName,GroupSpecific FROM domain_values_business_expected WHERE coreTrack=?";
		return jdbcTemplate.queryForList(query,DomainName);
						
	}
	
	

}