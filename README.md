# Pewlett-Hackard-Analysis

## Overview of the analysis:

### Background:

Pewlett-Hackard is a large company hosting several thousand employees. As part of the company's long term benefits it offers retirement packages for those who meet certain criteria. In order to prepare for filling up those soon to be vacant positions certain analysis needs to be done in advance to address such change with ease.

Bobby is an HR analyst who is tasked to do employee research specifically on employees that will be retiring soon and identifying the number of positions that will need to be filled up.

### Purpose of the analysis:

This analysis we will help Pewlett-Hackard generate a list of all employees eligible for the retirement package and those eligible for mentorship.
 
## Results:

### Retirement Titles:
1- When creating a Retirement Titles table to demonstrate all the titles of current employees who were born between 1952 and 1955 I noticed that the data is not accurate as some employees are repeated more than once in the same database and this can be explained by the fact that an employee who has a unique employee number can get promoted and lead to a duplication in the employee database as shown below:

![retirment_titles](https://user-images.githubusercontent.com/88908758/136812953-ae3318d4-1c7d-40e4-ac41-43f6159d0c0e.PNG)

### Unique Titles:
2- To fix the inaccuracy in Retirement titles outcomes i have used the DISTINCT ON function to show only the most recent title of each employee as shown below:

![unique_titles](https://user-images.githubusercontent.com/88908758/136813062-e0f36f5b-79ff-487e-ad06-33de81807317.PNG)

### Retiring Titles:
3- In order to get the number of positions that need to be filled i have used the count function to create a table showing most recent job title and number of those retirement aged employees. 

![retiring_title_count](https://user-images.githubusercontent.com/88908758/136813108-a30253e9-202e-4940-8c2a-faa66df16b96.PNG)

### Mentorship Eligibility:
4- I created a table showing the employees that are eligible to participate in a mentorship program through filtering employee Birth dates who were born between 1965 and 1965 as follows:

![mentorship_eligiblty](https://user-images.githubusercontent.com/88908758/136813289-d43ab1e9-b816-4af5-b922-5c873b9ccbf5.PNG)

## Summary:

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
There are 90,398 employees will retire in the near future which need to be addressed and planned for. 
![Number_of_retiring_title_count](https://user-images.githubusercontent.com/88908758/136813484-0e0dfb54-e70f-433f-89b2-9facd65b9b58.PNG)

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
There are only 1,549 employees ready to retire who are eligible for mentoring. Therefore, there are not enough retirement ready employees that qualify for mentoring.

![count_mentorship_eligibility](https://user-images.githubusercontent.com/88908758/136813515-1ff4c93f-1961-4238-841a-2296841c799a.PNG)

### Additional queries that may provide more insight into the upcoming "silver tsunami:

1- We can create a table that shows the number of employees that are eligible for the mentorship program using the count function.

2- Run a query to identify how many employees are in those departments that will have vacant roles due to "silver tsunami" and identify whether retired employees work can be split between current employees with a matter of promoting employees.

3- Compare salaries of current employees and employees about to retire to identify whether it is more efficient to promote current employees or hire new employees to fill those future vacant positions.
