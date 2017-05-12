package com.sk.spring.autowire;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
public static void main(String[] args) {
	ApplicationContext ctx= new ClassPathXmlApplicationContext("ApplicationContext-autowire.xml");
	Person p=(Person)ctx.getBean("person");
	System.out.println(p);
}
}
