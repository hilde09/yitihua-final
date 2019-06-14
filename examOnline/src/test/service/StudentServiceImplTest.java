/**
 * 
 */
package test.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.entity.Student;
import com.service.StudentServiceImpl;

public class StudentServiceImplTest {
	private static StudentServiceImpl studentServiceImpl;
	private static Student student;


	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		studentServiceImpl = new StudentServiceImpl();
		student = new Student();
		student.setStudentID("1");
		student.setPassword("1");
	}


	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}


	@Test
	public void testAllowLogin() {
		boolean b =  studentServiceImpl.allowLogin(student.getStudentID(), student.getPassword());
		System.out.println(b);
	}


	@Test
	public void testGetStudentByClass() {
	}


	@Test
	public void testGetStudentByName() {
		List<Student> list =studentServiceImpl.getStudentByName("11");
		for (Student student : list) {
			System.out.println(student.getStudentName()+"    ");
		}
	}


	@Test
	public void testGetStudentInfo() {
		Student stu = studentServiceImpl.getStudentInfo("1");
		System.out.println(stu);
	}


	@Test
	public void testSetStudentResult() {
		studentServiceImpl.setStudentResult("1", 40);
	}

}
