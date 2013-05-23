# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
for count in 1..20
  itemID = count
  itemName = "Pens stabiliner " + count.to_s
  SKU = Random.rand(1000...9999)
  category = "Office paper Product"
  units = "Ea"
  unitCost = Random.rand(0.1...2)
  inStock = 1
  nextShipment = Time.now
  
  Supplyitem.create( :itemName => itemName, 
                    :SKU => SKU, 
                    :description => "Description" + itemID.to_s, 
                    :category => category, 
                    :units => units,
                    :unitCost => unitCost,
                    :inStock => inStock,
                    :nextShipment => nextShipment )
                  
  Name = "Employee Name" + count.to_s
  ReportsTo = count.to_s
  Job = "Employee Job" + count.to_s
  Email = "employee" + count.to_s + "@gmail.com"
  EmployeeType = "EmployeeType" + count.to_s
  EmployeeStatus = "EmployeeStatus" + count.to_s
  Salary = "Salary" + count.to_s
  OrgUnit = "OrgUnit" + count.to_s
  Gender = "1"
  MaritalStatus = "1"
   
  Employee.create( :Name => Name,
                  :ReportsTo => ReportsTo, 
                  :Job => Job, 
                  :Email => Email, 
                  :EmployeeType => EmployeeType, 
                  :EmployeeStatus => EmployeeStatus, 
                  :Salary => Salary, 
                  :OrgUnit => OrgUnit, 
                  :Gender => Gender,
                  :MaritalStatus => MaritalStatus   )
end


