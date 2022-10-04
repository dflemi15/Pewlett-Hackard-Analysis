Pewlett-Hackard Employee Database Analysis

Overview 

This analysis was conducted to provide insight on the upcoming wave of retirement eligible employees at Pewlett-Hackard (PH). To do this, an in-depth analysis of the employee database at Pewlett-Hackard was done using a variety of queries that provided important information by partitioning the data into useful subcategories.

Results

The results of the analysis yielded the following four major findings:

•	The largest population of employees that will be retiring soon hold the positions of Senior and Junior Engineer closely followed  by Senior and Junior Staff. Over 60,000 employees in these job categories will be leaving PH in the very near future according to the SQL output below.

 ![image](https://user-images.githubusercontent.com/107585908/182267523-7ac4c5d1-16e9-4059-b2ce-e79a52c06b93.png)

•	The output also indicates that only two individuals in the job title “manager” have reached retirement age. This should assist with continuity as PH looks to increase its efforts to hire engineers and general staff.

•	The results also indicate that there are potentially 1,549 employees who are eligible to take part in a mentorship program to help fill key roles that will be vacant due to retirement. The distribution of the mentorship eligible roles is as follows (information captured using Pivot Tables):

![image](https://user-images.githubusercontent.com/107585908/182267540-87d5a69d-8606-4b0a-8386-44e6b2936c49.png)

•	PH does not appear to have the current capacity to fill the vacant positions. The “silver tsunami” should be a major concern for PH as they attempt to find quality talent to replace the significantly large number of employees retiring.  

Summary

In summary, there are a total of 72,458 potential roles that will need to be filled due to the number of employees that are eligible to retire. As of now, it does not appear that PH has the required amount of mentorship eligible employees to help cover that amount of resource loss. 

If we look at the number of potential retirements by departments, the results are as follows:

![image](https://user-images.githubusercontent.com/107585908/182267578-b5d8ddb5-a1d2-4038-b4ad-99ef7e247731.png)
 
Departments d005, d004, and d007 (Development, Production, and Sales, respectively) will be hit hardest by the “silver tsunami.” This information was obtained by running the following queries in Postgres:

![image](https://user-images.githubusercontent.com/107585908/182267599-5447ed17-5278-4934-b2b6-3f039d32ba48.png)
 
  
