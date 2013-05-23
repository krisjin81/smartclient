class Employee < ActiveRecord::Base
  attr_accessible :EmployeeId,
                  :Name, 
                  :ReportsTo, 
                  :Job, 
                  :Email, 
                  :EmployeeType, 
                  :EmployeeStatus, 
                  :Salary, 
                  :OrgUnit, 
                  :Gender,
                  :MaritalStatus 
end
