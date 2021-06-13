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

The "silver tsunami" is defined by *leisurecare.com* as: "a metaphor, used to describe the expected increase in the senior population" (source: https://www.leisurecare.com/resources/silver-tsunami-senior-living/)

From our merged csv, retiring_titles.csv, as outlined in the results section above we can see that the number of roles that will need to be filled as the silver tsumani makes an impact is 90,393 roles.

This number varies by job title, as seen in the chart below:

<p align="center">
<img src=https://github.com/smanowar/Pewlett-Hackard-Analysis/blob/main/visuals/retiring_count_by_title.PNG> 
</p>

**_Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?_**

To find out if there are enough retirement-ready employees in the departments to mentor the next genetation of Pewlett Hackard employees, we will compare the retirement by job titles chart, and the employees eligible for the mentorship program by job title chart:
<br>
<br>
<p align="center">
<img src=https://github.com/smanowar/Pewlett-Hackard-Analysis/blob/main/visuals/retiring_count_by_title.PNG> 
<img src=https://github.com/smanowar/Pewlett-Hackard-Analysis/blob/main/visuals/mentorship_eligibility_by_department.PNG> 
</p>

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; **Positions to Fill** &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; **Employees Eligible for Mentorship Program**
<br><br>

From the charts we can see that the amount of roles needing to be filled vastly outnumbers the amount of employees eligible for the mentorship program. 

Taking a closer look at the results, we can see that the greatest number of roles to fill are in the senior positions of Senior Engineer and Senior Staff, with 412 and 390 employees eligible for the mentorship program respectivley. 

Next are the positions of regular staff and regular engineer, with 312 and 390 employees eligible for the mentorship program respectivley.

Taking a look at the results with a breakdown by department:

- Senior Engineer: 29,414 roles to be filled vs. 297 eligible for the mentorship program
- Senior Staff: 28,254 roles to be filled vs. 412 eligible for the mentorship program
- Engineer: 14,222 roles to be filled vs. 390 eligible for the mentorship program
- Staff: 12,243 roles to be filled vs. 312 eligible for the mentorship program
- Technique Leader: 4502 roles to be filled vs. 77 eligible for the mentorship program
- Assistant Engineer: 1761 roles to be filled vs. 61 eligible for the mentorship program
- Manager: 2 roles to be filled vs. no employees eligible for the mentorship program

Because the number of roles to be replaced vastly outnumbers the about of employees eligible for the mentorship program by department, in order to get the mentorship program to work some adjuments need to be made:

- one of which could be to expand the range for which employees would be eligible for the mentorship program, allowing for more potential mentors

- another solution could be to to fill the senior positions with internal hires or promotions. This would fill the positions which are most in demand with employees who have already been aquainted with the daily tasks, roles, and software of the company - therefore, posing less of a need for mentorship in those areas. Then the employees eligible for the mentorship program can be grouped (Senior Staff and Staff mentors training new Staff hires, and Senior Engineer and Engineer mentors traning new Engineer hires)
