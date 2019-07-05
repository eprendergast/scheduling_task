# scheduling_task

Step 1: Create a schedule of dates based on the inputs below
Inputs:
Start date: 01/01/2019
End date: 01/01/2020
Frequency:
Weekly
Monday: Yes/No
Tuesday: Yes/No
Wednesday: Yes/No
Thursday: Yes/No
Friday: Yes/No
Saturday: Yes/No
Sunday: Yes/No
Monthly
1st
2nd
..
31st
 
E.g.
1) Weekly on Monday, Tuesday and Fridays
2) Weekly on Monday
3) Weekly on Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
4) Monthly on the 25th
5) Monthly on the 1st and 2nd
 
Outputs:
Array of dates
e.g. (03/01/2019, 04/01/2019)
 
Step 2: Filter list of dates for bank holiday etc.
If on a bank holiday increment by 1 day, as long as that next day isn’t a weekend or another bank holiday (e.g. 25th and 26th)
