package com.transline.controller;

import com.transline.entity.Employee;
import com.transline.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller
@RequestMapping("/api")
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/")
    public String homePage() {
        return "home";
    }

    @GetMapping("/create-employee")
    public String createEmployeePage() {
        return "create-employee";
    }

    @PostMapping("/create")
    public String createEmployee(@RequestParam("empName") String empName,
                                 @RequestParam("email") String email,
                                 @RequestParam("department") String department,
                                 @RequestParam("designation") String designation,
                                 @RequestParam("salary") double salary,
                                 Model model) {
        Employee employeeData = employeeService.createEmployee(empName, email, department, designation, salary);
        model.addAttribute("employee", employeeData);
        return "employeeDetails";
    }

    @GetMapping("/update-employee")
    public String updateEmployeePage() {
        return "updateEmployee";
    }

    @PostMapping("/update")
    public String updateEmployee(@RequestParam("empId") int empId,
                                 @RequestParam("empName") String empName,
                                 @RequestParam("email") String email,
                                 @RequestParam("department") String department,
                                 @RequestParam("designation") String designation,
                                 @RequestParam("salary") double salary,
                                 Model model) {
        Employee employeeData = employeeService.updateEmployee(empId, empName, email, department, designation, salary);
        model.addAttribute("employee", employeeData);
        return "employeeDetails";
    }

    @GetMapping("/getAll-employee")
    public String getAllEmployeePage() {
        return "getAllEmployee";
    }

    @GetMapping("/getAllEmployees")
    public String getAllEmployee(Model model) {
        List<Employee> employeeList = employeeService.getAllEmployee();
        model.addAttribute("employeeList", employeeList);
        return "getAllEmployee";
    }

    @GetMapping("/get-employee-by-name")
    public String getEmployeeByNamePage() {
        return "searchEmployeeByName";
    }

    @GetMapping("/getByName")
    public String searchEmployeeByName(@RequestParam("name") String name, Model model) {
        List<Employee> employeeList = employeeService.searchEmployeeByName(name);
        model.addAttribute("employeeList", employeeList);
        model.addAttribute("searchName", name);
        return "searchEmployeeByName";
    }

    @GetMapping("/get-employee-by-department")
    public String getEmployeeByDepartmentPage() {
        return "searchEmployeeByDepartment";
    }

    @GetMapping("/getByDepartment")
    public String searchEmployeeByDepartment(@RequestParam("department") String department, Model model) {
        List<Employee> employeeList = employeeService.searchEmployeeByDepartment(department);
        model.addAttribute("employeeList", employeeList);
        model.addAttribute("department", department);
        return "searchEmployeeByDepartment";
    }

    @GetMapping("/delete-employee-by-Id")
    public String deleteEmployeeByIdPage() {
        return "deleteEmployeeById";
    }

    @PostMapping("/deleteEmployee")
    public String deleteEmployeeData(@RequestParam("employeeId") int employeeId, Model model) {
        String resultMessage = employeeService.deleteEmployeeData(employeeId);
        model.addAttribute("message", resultMessage);
        return "deleteEmployeeById";
    }
}
