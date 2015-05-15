require 'minitest/autorun'
require 'minitest/pride'
require './employee.rb'
require './department.rb'
require 'byebug'


class EmployeeReviewTest < Minitest::Test

  def test_employee_department_class_exists
    assert Employee
    assert Department
  end


  def test_department_has_a_name
     department = Department.new("Human Resources")
  end


  def test_department_knows_its_name
    department = Department.new("Human Resources")
    assert_equal "Human Resources", department.name
  end


  def test_employee_has_name_email_phone_and_salary
    assert employee1 = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
    assert employee2 = Employee.new("Anna", "anna@live.com", "919-555-5555", 5000)
    assert employee3 = Employee.new("Turner", "turner@live.com", "303-555-5555", 500)
  end


  def test_employee_knows_name
    employee1 = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
    employee2 = Employee.new("Anna", "anna@live.com", "919-555-5555", 5000)
    employee3 = Employee.new("Turner", "turner@live.com", "303-555-5555", 500)

    assert_equal "Danai",  employee1.name
    assert_equal "Anna",   employee2.name
    assert_equal "Turner", employee3.name
  end
  #
  #
  # def test_employee_knows_email
  #   assert_equal "danai@live.com", Employee.new("Danai", "danai@live.com", "307-555-5555",100).email
  # end
  #
  #
  # def test_employee_knows_phone_nuber
  #   assert_equal "307-555-5555", Employee.new("Danai", "danai@live.com", "307-555-5555",100).phone_number
  # end
  #
  #
  # def test_employee_knows_salary
  #   assert_equal 100, Employee.new("Danai", "danai@live.com", "307-555-5555",100).salary
  # end

#===============================================================================
#   def test_department_add_to_department_directory
#     department = Department.new("Human Resources")
#     assert department.assign_dep(department)
# #p department.assign_dep(department)
#   end
#===============================================================================

  def test_employee_added_to_a_department
    department = Department.new("Human Resources")
    employee1   = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
    employee2  = Employee.new("Anna", "anna@live.com", "919-555-5555", 5000)
    employee3  = Employee.new("Turner", "turner@live.com", "303-555-5555", 500)

    assert department.assign(employee1)
    assert department.assign(employee2)
    assert department.assign(employee3)

    assert_equal [employee1,employee2,employee3], department.department_staff
  end


# is this right???? this needs some work. i feel some extraneous code
  def test_can_get_employee_name_from_department
    department = Department.new("Human Resources")
    p department.department_staff
  #   employee1  = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
  #   employee2  = Employee.new("Anna", "anna@live.com", "919-555-5555", 5000)
  #   employee3  = Employee.new("Turner", "turner@live.com", "303-555-5555", 500)
  #
  #   staff = department.assign(employee1)
  #   #department.assign(employee1)
  #   #department.assign(employee2)
  #   assert_equal "Danai", department.get_name(staff)
   end


  # def test_can_get_employee_salary_from_department
  #   department = Department.new("Human Resources")
  #   employee1   = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
  #   employee2  = Employee.new("Anna", "anna@live.com", "919-555-5555", 5000)
  #   employee3  = Employee.new("Turner", "turner@live.com", "303-555-5555", 500)
  #   staff = department.assign(employee1)
  # #  p staff
  #   assert_equal 100 , department.get_salary(staff)
  # end


  # def test_can_get_total_salary_of_employees
  #   department = Department.new("Human Resources")
  #   employee1   = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
  #   employee2  = Employee.new("Anna", "anna@live.com", "919-555-5555", 5000)
  #   employee3  = Employee.new("Turner", "turner@live.com", "303-555-5555", 500)
  #   staff = department.assign(employee1)
  #
  #   assert_equal 5600, department.add_salary(staff)
  # end












end
