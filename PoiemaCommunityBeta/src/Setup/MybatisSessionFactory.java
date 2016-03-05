package Setup;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ibatis.common.resources.Resources;
public class MybatisSessionFactory extends HttpServlet {
	private static SqlSessionFactory sqlSessionFactory;

    public MybatisSessionFactory() {}

	public void init(ServletConfig config) throws ServletException {
		
		try {
			InputStream inputStream = Resources.getResourceAsStream("Setup/MybatisConfig.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream); 
		} catch (IOException e) {e.printStackTrace();}
	}

	public static SqlSessionFactory getSqlSessionFactory() {return sqlSessionFactory;}
	public static void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		MybatisSessionFactory.sqlSessionFactory = sqlSessionFactory;
	}

	
	
	
	

}
