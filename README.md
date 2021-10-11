# Pewlett-Hackard-Analysis

## Overview of the analysis:

### Background:

Pewlett-Hackard is a large company hosting several thousand employees. As part of the company's long term planning it is offering retirement packages for those who meet certain criteria and also the company is planning for which positions will need to be filled up for those employees who will retire in the near future.
Bobby is an HR analyst who is tasked to do employee research on which employees will be retiring soon and how many positions will need to be filled up.

### Purpose of the analysis:

This analysis will help Pewlett-Hackard generate a list of all employees eligible for the retirement package.
 
## Results:(Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed)

### Retirement Titles:
1- When creating a Retirement Titles table to demonstrate all the titles of current employees who were born between 1952 and 1955 i noticed that the data demonstrated in the table is not accurate as some employees are repeated more than once in the same database and this can be explained by the fact that an employee who has a unique employee number can get promoted which will lead to a duplication as shown below:

### Unique Titles:
2- To fix the inaccuracy in Retirement titles outcome i have used the DISTINCT ON function to show only the most recent title of each employee as shown below:

### Retiring Titles:
3- In order to get the number of positions that need to be filled i have used the count function to create a table showing most recent job title and number of those retirement aged employees. 

### Mentorship Eligibility:
4- I created a table showing the employees that are eligible to participate in a mentorship program through filtering employee Birth dates who were born between 1965 and 1965 as follows:


## Summary:

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?


### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?


### Additional queries that may provide more insight into the upcoming "silver tsunami:

1- We can create a table that shows the number of employees that are eligible for the mentorship program using the count function.

2- Run a query to identify how many employees are in those departments that will have vacant roles due to "silver tsunami" and identify whether retired employees work can be split between current employees with a matter of promoting employees.

3- comparing salaries of current employees and employees about to retire to identify whether it is more efficient to promote current employees or hire new employees to fill those future vacant positions.