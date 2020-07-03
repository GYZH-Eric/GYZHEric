package mvc.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import mvc.bean.Car;
import mvc.bean.Tank;


public class TestSpring extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 System.out.println("Served at: "+request.getContextPath());
		    ApplicationContext act=new ClassPathXmlApplicationContext("test.xml");
		    Car c2 = act.getBean(Car.class);
		    System.out.println(c2.getBrand()+"--------"+c2.getColor());
		    Tank t1 = act.getBean(Tank.class);
		    System.out.println(t1.getBrand()+"--------"+t1.getColor());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
