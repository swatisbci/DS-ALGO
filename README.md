# DS-ALGO
## Project Title:   
   Data Structures and Algorithms (DS-ALGO) Project 

## Project Description:    
DS-ALGO project is an automation testing project for the website "https://dsportalapp.herokuapp.com/ ".    
The above website gives you knowledge about data structures and its types (Arrays, LinkedList, Stack, Queue, Tree, Graph) and algorithms using Python.

### Table of Contents:
1.	Tools and Technologies
2.	Frame Work
3.	Running Project
4.	Reporting

#### Tools and Technologies used in this project:

1.	##### Maven      
	•	Handles the entire lifecycle of the project.    
	•	Manages project dependencies.    
	•	Uses the concept of POM (Project Object Model)    

2.	##### Java    
	•	Object-Oriented Programming language.    
	•	Java with Selenium execution is faster.    

3.	##### Selenium WebDriver    
	•	Automating web-based application testing    
	•	Testing Framework for testing UI(User Interface) of the application    

4.	##### Cucumber    
	•	Framework that supports Behavior Driven Development (BDD approach).   

5.	##### PicoContainer 
	•	Picocontainer is responsible for instantiating objects and resolving their constructor dependencies. 
	•	Any Picocontainer-instantiated object (eg. a Webwork action) can obtain an instance of another (eg. a Manager class) simply by requesting one in its 		     constructor.
	•	Using PicoContainer to share state between steps in a scenario is easy and non-intrusive.
	
6.	##### Log4j    
	•	Logging framework which is responsible for capturing, publishing, and formatting logging information.    

#### Framework:             
![image](https://user-images.githubusercontent.com/97117913/211368468-0149f553-6399-4dfe-894e-3f8e18446b64.png)



#### Running the project:    
    Through Eclipse:	
      	Go to Runner.java in  src\test\java\com\runner.
        Right Click – run as – TestNG Test

##### Features will run in order :     
1.	1startPage.feature   
2.	2register.feature   
3.	3login.feature   
4.	4DataStructureIntro    
5.	5arrays.feature    
6.	6linkedList.feature    


#### Reporting      
Once tests complete run reports are generated. This framework uses different types of test reporters to communicate pass/failure.

#### TestNG   
•	Open- Source automation testing framework for Java.    
•	To test the unit, functional, E2E, and integration testing of the application.   

#### Allure Report:          
	Allure Report will be generated into the temp folder. To see the report
	Go to command prompt
		$ cd <Project Directory>

	$ allure serve allure-results

#### Spark Report:           
	Spark report will be generated in the directory: 
		test-output/DsAlgo-Spark/Index.html    

#### HTML Report:           
	HTML report will be generated in the directory: 
		test-output/HtmlReport/ExtentHtml.html

#### Cucumber Report:        
	The cucumber report will be generated in the directory:
			target/cucumber-reports/cucumber.html
			
#### TestNg Report:   
	TestNg report will be generated in the directory: 
		test-output/PDFReport/ExtendPdf.pdf      


