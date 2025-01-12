package com.transline.service;

import com.transline.custome.IdNotFoundException;
import com.transline.entity.Employee;
import com.transline.repository.EmployeeRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepo;

    @Override
    public Employee createEmployee(String empName,
                                   String email,
                                   String department,
                                   String designation,
                                   double salary) {
        try {
            Employee employee = new Employee();
            employee.setEmpName(empName);
            employee.setEmail(email);
            employee.setDepartment(department);
            employee.setDesignation(designation);
            employee.setSalary(salary);
            return employeeRepo.save(employee);
        } catch (Exception ex) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Employee data saving failed");
        }
    }

    @Override
    public Employee updateEmployee(int employeeId, String empName, String email, String department, String designation, double salary) {
        Optional<Employee> existingEmployee = employeeRepo.findById(employeeId);
        if (existingEmployee.isPresent()) {
            Employee updatEmployee = existingEmployee.get();
            updatEmployee.setEmpId(employeeId);
            updatEmployee.setEmpName(empName);
            updatEmployee.setEmail(email);
            updatEmployee.setDepartment(department);
            updatEmployee.setDesignation(designation);
            updatEmployee.setSalary(salary);
            try {
                return employeeRepo.save(updatEmployee);
            } catch (Exception ex) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Employee data updating failed");
            }
        } else {
            throw new IdNotFoundException("Employee id not found");
        }
    }

    @Override
    public List<Employee> getAllEmployee() {
        try {
            return employeeRepo.findAll();
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "All employee data getting failed");
        }
    }

    @Override
    public List<Employee> searchEmployeeByName(String name) {
        try {
            String employeeName = name.toLowerCase();
            List<Employee> employeeList = employeeRepo.findByEmpName(employeeName);
            if (employeeList.isEmpty()) {
                //  throw new IdNotFoundException("Employee name is invalid");
                return employeeList;
            } else {
                return employeeList;
            }
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Employee data getting failed");
        }
    }

    @Override
    public List<Employee> searchEmployeeByDepartment(String department) {
        try {
            String empDepartment = department.toLowerCase();
            List<Employee> employeeList = employeeRepo.findByDepartment(empDepartment);
            if (employeeList.isEmpty()) {
                return employeeList;
            } else {
                return employeeList;
            }
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Employee data getting failed");
        }
    }

    @Transactional
    @Override
    public String deleteEmployeeData(int employeeId) {
        Optional<Employee> existingEmployee = employeeRepo.findById(employeeId);
        if (existingEmployee.isPresent()) {
            employeeRepo.deleteById(employeeId);
            return "Employee with ID " + employeeId + " has been successfully deleted.";
        } else {
            return "Employee with ID " + employeeId + " not found or could not be deleted.";
        }
    }
}
