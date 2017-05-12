package com.sk.spring.collection;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
public static void main(String[] args) {
	ApplicationContext ctx= new ClassPathXmlApplicationContext("ApplicationContext.xml");
	Person per=(Person)ctx.getBean("person3");
	System.out.println(per);
	
	NewPerson newperson=(NewPerson)ctx.getBean("newperson");
	System.out.println(newperson);
	
	DataSource dataSource=(DataSource)ctx.getBean("datasource");
	System.out.println(dataSource.getProperties());
	
	Person person4=(Person)ctx.getBean("person4");
	System.out.println(person4);
}
}
