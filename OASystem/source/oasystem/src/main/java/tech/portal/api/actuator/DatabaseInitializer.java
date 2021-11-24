package tech.portal.api.actuator;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

@Component
public class DatabaseInitializer {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@PostConstruct
	public void init() {
		jdbcTemplate.update(
				"CREATE TABLE IF NOT EXISTS users ("
				+ "id BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT, "
				+ "email VARCHAR(100) NOT NULL, "
				+ "password VARCHAR(100) NOT NULL, "
				+ "name VARCHAR(100) NOT NULL, "
				+ "createdAt BIGINT NOT NULL, "
				+ "UNIQUE (email)"
				+ ")"
		);

		String sql="REPLACE INTO users VALUES(?,?,?,?,?);";

		List<Object[]> batchArgs=new ArrayList<Object[]>();
		batchArgs.add(new Object[]{1,"root@root.com","root1324255","root",new BigInteger("1635686343092")});
		batchArgs.add(new Object[]{2,"admin@root.com","admin233","admin",new BigInteger("1635686343093")});
		batchArgs.add(new Object[]{3,"staff1@root.com","staff1","staff1",new BigInteger("1635686343094")});
		jdbcTemplate.batchUpdate(sql, batchArgs);
	}
}
