isc.RestDataSource.create({
    "ID": "employee",
    "fields": [
        { "name": "Name", "title": "Name", "type": "text", "length": "128" },
        { "name": "EmployeeId", "title": "Employee ID", "type": "integer", "primaryKey": "true", "hidden": "true" },
        { "name": "ReportsTo", "title": "Manager", "type": "integer", "required": "true", "rootValue": "1", "detail": "true" },
        { "name": "Job", "title": "Title", "type": "text", "length": "128" },
        { "name": "Email", "title": "Email", "type": "text", "length": "128" },
        { "name": "EmployeeType", "title": "Employee Type","type": "text", "length": "40" },
        { "name": "EmployeeStatus", "title": "Status", "type": "text", "length": "40" },
        { "name": "Salary", "title": "Salary", "type": "float" },
        { "name": "OrgUnit", "title": "Org Unit", "type":"text", "length":"128" },
        { "name": "Gender", "title": "Gender", "type":"text", "length":"7",
            "valueMap": ["male", "female"]
        },
        { "name": "MaritalStatus", "title": "Marital Status", "type": "text", "length": "10",
            "valueMap": ["married", "single"]
        }
    ],
	"criteriaPolicy":"dropOnChange",
    "dataFormat":"json",
    "operationBindings": [
                { "operationType": "fetch", "dataProtocol": "postMessage", "dataURL": "/smartclient/data" },                
                { "operationType": "add", "dataProtocol": "postMessage", "dataURL": "/smartclient/data" },
                { "operationType": "update", "dataProtocol": "postMessage", "dataURL": "/smartclient/data" },
                { "operationType": "remove", "dataProtocol": "postMessage", "dataURL": "/smartclient/data" }
            ]
});