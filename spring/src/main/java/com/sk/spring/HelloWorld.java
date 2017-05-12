package com.sk.spring;

public class HelloWorld {
	String name2;

	public void setName2(String name) {
		this.name2 = name;
	}

//	public HelloWorld(String name) {
//		this.name2 = name;
//	}

	public HelloWorld() {
		System.out.println("HelloWorld()");
	}

	public void hello() {
		System.out.println("hello:" + name2);
	}
}
