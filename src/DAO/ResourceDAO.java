package DAO;
import bean.Resources;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;



public class ResourceDAO{

	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<Map<String, Object>> selectResource(String empId) {
		String query = "SELECT * FROM RESOURCES WHERE EMPID=?";
		return  jdbcTemplate.queryForList(query,empId);
				
	}

}
