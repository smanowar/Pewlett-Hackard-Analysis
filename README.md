# Pewlett-Hackard-Analysis

## Overview 

### Purpose
As many current employees at Pewlett-Hackard are reaching retirement age, the purpose of this analysis is to determine the number of employees expected to retire, determine the expected amount of retiring employees by department, and to analyze the feasibility of solutions to soften the impact of the exit such a large number of employees to train the new workforce.. 

One such solution proposed is an employee mentorship program, where current employees can mentor new staff.  

Using SQL and PgAdmin, taking employee data from the csv files employees.csv, titles.csv, and dept_employees.csv we will determine:

- the number of total employees eligible for retirement
- the number of total employees eligible for retirement by their job title
- the number of employees eligible for the proposed mentorship program
- the number of employees eligible for the proposed mentorship program by job title


## Results 
Pewlett-Hackard has a total staff count of x. Below we will determine the number of employees that meet retirement eligibility, as well as the number of employees that meet eligibility for the proposed mentorship program.

### Total Figure of Employees Eligible for Retirement

Retirement eligibilty was determined based on the following criteria:

- Employees born between January 1st 1952 and December 31st 1955


Firstly, the number of retiring employees was calculated by merging the csv files employees.csv, titles.csv, and dept_employees.csv, and filtering them based on the retirement criteria (see retirement_titles.csv). Then any duplicate rows were dropped (see unique_titles.csv).

We can see that the number of employees eligible for retirement is as follows:

<p align="center">
<img src=https://github.com/smanowar/Pewlett-Hackard-Analysis/blob/main/visuals/number_of_retiring_employees.PNG> 
</p>

and the number of employees eligible for retirement by job title is as follows:

<p align="center">
<img src=https://github.com/smanowar/Pewlett-Hackard-Analysis/blob/main/visuals/retiring_count_by_title.PNG> 
</p>

 
### Employees Eligible for the Mentorship Program

Mentorship eligibilty was determined based on the following criteria:

- Employees born between January 1st 1965 and December 31st 1965


One possible solution for the impending increase in employees retiring at PH is to introduce a mentorship program in which retired employees can then train the next generation of PH.

We can see that the number of employees eligible for the mentorship program is as follows:

<p align="center">
<img src=https://github.com/smanowar/Pewlett-Hackard-Analysis/blob/main/visuals/eligible_mentorship_program%20_count.PNG> 
</p>

and the number of employees eligible for the mentorship program by job title is as follows:

<p align="center">
<img src=https://github.com/smanowar/Pewlett-Hackard-Analysis/blob/main/visuals/mentorship_eligibility_by_department.PNG> 
</p>

## Summary

**_How many roles will need to be filled as the "silver tsunami" begins to make an impact?_**

The "silver tsunami" is defined as, "a metaphor, used to describe the expected increase in the senior population" (definition cited from:https://www.leisurecare.com/resources/silver-tsunami-senior-living/) 
From our merged csv retiring_titles.csv, outlined in the results section above, we can see that the number of roles that will need to be filled as the silver tsumani makes an impact is (fill in).

This number varies by job title, as seen in the chart below:

<p align="center">
<img src=https://github.com/smanowar/Pewlett-Hackard-Analysis/blob/main/visuals/retiring_count_by_title.PNG> 
</p>

**_Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?_**

