# mavendemo-spring
支持servlet2.3：
	增加jetty9插件和tomcat插件（没有日志）
		1.jetty9可以正常启动(webapp未生效，shutdown未生效)
		2.tomcat8无法正常启动(全部未生效)
		3.配置slf4j
		4.增加maven的sql插件
			执行方式：
				1.在mysql中创建yourdb的数据库
				2.执行命令mvn test（sql:execute不起作用）
				注：1.记得修改pom.xml的配置文件 2.创建yourdb的数据库
		5.增加mybatis
		6.spring3+调度任务quartz
		7.spring本身的调度任务
		8.quartz支持集群和多种方式配置
		9.支持druid，修改的druid本地数据库配置错误的地方
	增加sprinmvc
		引入webpath的方法
		jav对象转js对象
		jquery、bootstrap的封装
		ajax的封装
		没有处理错误页面