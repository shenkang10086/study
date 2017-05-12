package com.fh.test;

public class TestMatch {
public static void main(String[] args) {
	final String NO_INTERCEPTOR = ".*/((login)|(logout)|(code)|(app)|(product)|(static)|(main)|(websocket)|(fhadmin)|(web)|(fh_html_1)|(fh_static_1)|(index)|(uploadImgs)).*";	//不对匹配该值的访问路径拦截（正则）
	System.out.println("http://localhost:8080/SKWEB/product/list".matches(NO_INTERCEPTOR));
}
}
