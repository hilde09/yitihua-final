package test.dao;


import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.dao.StudentDaoImpl;
import com.entity.Student;

public class StudentDaoImplTest {
	static StudentDaoImpl studentDao ;
	static Student student = new Student();
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		studentDao = new StudentDaoImpl();
		student.setStudentID("1");
		student.setStudentName("11");
		student.setPassword("1");
		student.setResult(100);
		student.setSclass("一班");
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}
	@Test
	public void testUpdate(){
		
		studentDao.save(student);
	}
}
