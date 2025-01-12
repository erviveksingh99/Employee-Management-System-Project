package com.transline.service;

import com.transline.custome.IdNotFoundException;
import com.transline.entity.Employee;

import java.util.List;

public interface EmployeeService {

    public Employee createEmployee(String empName,
                                   String email,
                                   String department,
                                   String designation,
                                   double salary);

    public Employee updateEmployee(int employeeId, String empName,
                                   String email,
                                   String department,
                                   String designation,
                                   double salary);

    public List<Employee> getAllEmployee();

    public List<Employee> searchEmployeeByName(String name);

    public List<Employee> searchEmployeeByDepartment(String department);

    public String deleteEmployeeData(int employeeId) throws IdNotFoundException;
}
