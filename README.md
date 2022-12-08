# Pwelett Hackard Analysis

### Overview of The Project

Provided with a data set, of CSV (comma seperated values) files, containing information regarding the ages of employees working for the Pwelett Hackard company. Tasked with conducting a database analysis on the future retirees within the company as well as determining who is eligible to be a participant in the mentorship program. All departments were to be included and the following dates were to be used as a way to determine elegibility for retirement or the mentorship program.

Birth Dates: 1952 to 1955 <-- employees born within these years were ready to retire <br />
Hired Dates: January 1, 1965 to December 31, 1965 <-- employees hired within these Dates are eligible for the mentorship program

### Technology Used
- Quick DBD
  - Used to showcase the entity relationship diagram (also called ERD) of the provided data 
- PostgresSQL
  - Used to create the Database from provided CSV files
- pgAdmin
  - Used to write Queries and visualize results

### Results
This was my ERD that I used to visualize the Database and plan future SQL scripts
![image](https://github.com/PeijaEn/Pwelett-Hackard-Analysis/blob/main/Pewlett-Hackard-Analysis/Resources/EmployeeDB.png?raw=true)

After creating my ERD, I began to query my data to create new CSV's containing all the employees ready to retire and their unique titles. The following image showcases all the unique job positions with the amount of people ready to retire from their respective position(s) which turned out to be close to ~65% of the workplace! ('Count' refers to the amount of people in the position ready to retire) <br />
![image](https://github.com/PeijaEn/Pwelett-Hackard-Analysis/blob/main/Pewlett-Hackard-Analysis/Resources/mod7-3.png?raw=true)

Utilizing the second set of dates (January 1, 1965 to December 31, 1965), found the employees who were eligible for the mentorship program. The following image shows those who are eligible: <br />
![image](https://github.com/PeijaEn/Pwelett-Hackard-Analysis/blob/main/Pewlett-Hackard-Analysis/Resources/mod7-4.png?raw=true)

### Summary
Based off of the fact that the company is losing over half od its staff to retirement, it is crucial for the company to get as many of those employees into the mentorship program to extend the amount of time to phase in new employees as old ones leave.
