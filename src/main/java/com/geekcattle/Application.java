package com.geekcattle;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.ComponentScan;

import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * 启动类23
 * @author liuyingao
 * @date 2019-04-02 17:33
 */
/*@SpringBootApplication
@ComponentScan("com.geekcattle")
@MapperScan("com.geekcattle.mapper")*/
@EnableAutoConfiguration
@SpringBootApplication//SpringBoot启动核心
@EnableConfigurationProperties
@EnableSwagger2
public class Application {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

}
