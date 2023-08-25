import pandas as pd

def department_highest_salary(employee: pd.DataFrame, department: pd.DataFrame) -> pd.DataFrame:
  #Creating the joined table 
  employee.rename(columns = {'departmentId' : 'Department'}, inplace = True)
  department.rename(columns = {'id' : 'Department'}, inplace = True)
  merged_df = employee.merge(department, on='Department', how='inner')

  #Finding personnel who receives the maximum salary by the department
  highest_salary_df = merged_df.groupby('Department').apply(lambda x: x[x['salary'] == x['salary'].max()])
  highest_salary_df = highest_salary_df[['name_x','name_y','salary']]
  highest_salary_df.rename(columns = {"name_x": "Employee", "name_y": "Department","salary": "Salary"}, inplace=True) 
  return highest_salary_df

#https://stackoverflow.com/questions/49308295/pandas-need-to-find-the-highest-salary-by-each-team-each-year for the reference
