package com.sk.spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestHelloWorld{
	public static void main(String[] args) {
		ApplicationContext ctx= new ClassPathXmlApplicationContext("ApplicationContext.xml");
//		HelloWorld helloWorld= (HelloWorld)ctx.getBean("hello");
//		HelloWorld helloWorld= ctx.getBean(HelloWorld.class);
		//spring先调用无参构造器初始化，再调用set方法注入值
//		helloWorld.hello();
		
		Car car=(Car)ctx.getBean("car");
		System.out.println(car);
//		
//		Car car2=(Car)ctx.getBean("car2");
//		System.out.println(car2);
//		
//		Person per=(Person)ctx.getBean("person");
//		System.out.println(per);
		
//		Person per2=(Person)ctx.getBean("person2");
//		System.out.println(per2);
	}
}