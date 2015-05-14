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




end
