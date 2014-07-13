prototypeWithSocial
prototypeSpringMVC


Use the below command to sync with Repo
git remote add startupsamples https://github.com/tphadke/StartupSamples.git
git push -u startupsamples  master

=======================
Spring4MVCHelloWorld
=======================
This is a bare bone Sample MVC program that works. 

This example was used 
http://javahash.com/spring-4-mvc-hello-world-tutorial-full-example/

Note: Mkong site example does not works.

The following problems occured and were resolved as follows:
Elcipse will show compile Erros and mvn clean install from eclipse will also show same compile errors. All imports for REST calls like @RequestParam, @Controller will complain as "symbol not found". To fix these errors run mvn clean install with -U option or "Update Snapshots" check box when running from eclipse. Refere http://stackoverflow.com/questions/20091177/eclipse-maven-error-archive-for-required-library-in-project-cannot-be-read-or-i


javax.servlet.api will show errors in eclipse ( The jsp file will show a red mark. ) To fix this go to eclipse/STS select the project right click and go to properties select targeted Runtimes. Select apache Tomcat her. Clean and rebuild the project. Refer to http://stackoverflow.com/questions/4076601/how-do-i-import-the-javax-servlet-api-in-my-eclipse-project

In the web.xml it showing you errors on the line <web-app.... saying version is not found even though these attributes are present. Refer to the link http://stackoverflow.com/questions/10382145/attributes-in-the-web-xmls-web-app-dont-work-in-eclipse
Remember the default generated web.xml file has <DOCTYPE etc.. .Remove all that and only have the following as the first line 
<web-app id="WebApp_ID" version="2.4"
	xmlns="http://java.sun.com/xml/ns/j2ee" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://java.sun.com/xml/ns/j2ee 
	http://java.sun.com/xml/ns/j2ee/web-app_2_4.xsd">


Sometimes the Run on Server from eclipse will not work. So best is to start apache from command line.  
