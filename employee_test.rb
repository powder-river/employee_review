require 'minitest/autorun'
require 'minitest/pride'
require './employee.rb'
require './department.rb'


class EmployeeReviewTest < Minitest::Test

  def test_employee_department_class_exists
    assert Employee
    assert Department
  end


  def test_department_has_a_name
    assert Department.new("Human Resources")
  end


  def test_department_knows_its_name
    assert_equal "Human Resources", Department.new("Human Resources").name
  end


  def test_employee_has_name_email_phone_and_salary
    assert Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
  end


  def test_employee_knows_name
    assert_equal "Danai", Employee.new("Danai", "danai@live.com", "307-555-5555",100).name
  end


  def test_employee_knows_email
    assert_equal "danai@live.com", Employee.new("Danai", "danai@live.com", "307-555-5555",100).email
  end


  def test_employee_knows_phone_nuber
    assert_equal "307-555-5555", Employee.new("Danai", "danai@live.com", "307-555-5555",100).phone_number
  end


  def test_employee_knows_salary
    assert_equal 100, Employee.new("Danai", "danai@live.com", "307-555-5555",100).salary
  end


  def test_employee_added_to_a_department
    department = Department.new("Human Resources")
    employee = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
    assert employee.assign(employee)
  #  p employee.assign(employee)
  end


  def test_can_get_employee_name_from_department
    department = Department.new("Human Resources")
    employee = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
    staff = employee.assign(employee)
    #p staff
    assert_equal "Danai", staff[0].a_method(staff).name
    p staff[0].a_method(staff).name
  end






end
