require 'minitest/autorun'
require 'minitest/pride'
require './employee.rb'
require './department.rb'
require 'byebug'


class EmployeeReviewTest < Minitest::Test

  def test_employee_human_resources_class_exists
    assert Employee
    assert Department
  end


  def test_human_resources_has_a_name
     human_resources = Department.new("Human Resources")
  end


  def test_human_resources_knows_its_name
    human_resources = Department.new("Human Resources")
    assert_equal "Human Resources", human_resources.name
  end


  def test_employee_has_name_email_phone_and_salary
    assert danai = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
    assert anna = Employee.new("Anna", "anna@live.com", "919-555-5555", 5000)
    assert turner = Employee.new("Turner", "turner@live.com", "303-555-5555", 500)
  end


  def test_employee_knows_name
    danai = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
    anna = Employee.new("Anna", "anna@live.com", "919-555-5555", 5000)
    turner = Employee.new("Turner", "turner@live.com", "303-555-5555", 500)

    assert_equal "Danai",  danai.name
    assert_equal "Anna",   anna.name
    assert_equal "Turner", turner.name
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
#   def test_human_resources_add_to_human_resources_directory
#     human_resources = human_resources.new("Human Resources")
#     assert human_resources.assign_dep(human_resources)
# #p human_resources.assign_dep(human_resources)
#   end
#===============================================================================

  def test_employee_added_to_a_human_resources
    human_resources =  Department.new("Human Resources")
    danai   = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
    anna  =  Employee.new("Anna", "anna@live.com", "919-555-5555", 5000)
    turner  =  Employee.new("Turner", "turner@live.com", "303-555-5555", 500)

    assert human_resources.assign(danai)
    assert human_resources.assign(anna)
    assert human_resources.assign(turner)

    assert_equal [danai,anna,turner], human_resources.department_staff
  end


# is this right???? this needs some work. i feel some extraneous code
  def test_can_get_employee_name_from_human_resources
    human_resources = Department.new("Human Resources")
    danai  = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
    anna  = Employee.new("Anna", "anna@live.com", "919-555-5555", 5000)
    turner  = Employee.new("Turner", "turner@live.com", "303-555-5555", 500)

    human_resources.assign(danai)
    human_resources.assign(anna)
    human_resources.assign(turner)

    assert_equal "Danai", human_resources.department_staff.each {|employee|
      if employee.email == "danai@live.com"
        return employee.name
      end}
  end


  def test_can_get_employee_salary_from_human_resources
    human_resources = Department.new("Human Resources")
    danai  = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
    anna  = Employee.new("Anna", "anna@live.com", "919-555-5555", 5000)
    turner  = Employee.new("Turner", "turner@live.com", "303-555-5555", 500)

    assert human_resources.assign(danai)
    assert human_resources.assign(anna)
    assert human_resources.assign(turner)

    assert_equal 100, human_resources.department_staff.each {|employee|
    if employee.name == "Danai"
      return employee.salary
    end }
  end


  def test_can_get_total_salary_of_employees
    human_resources = Department.new("Human Resources")
    danai   = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
    anna  = Employee.new("Anna", "anna@live.com", "919-555-5555", 5000)
    turner  = Employee.new("Turner", "turner@live.com", "303-555-5555", 500)

    assert human_resources.assign(danai)
    assert human_resources.assign(anna)
    assert human_resources.assign(turner)

    assert_equal 5600, human_resources.add_salary
  end


  # def test_emplyoee_is_good_or_not
  #   human_resources = Department.new("Human Resources")
  #   danai   = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
  #   anna  = Employee.new("Anna", "anna@live.com", "919-555-5555", 5000)
  #   turner  = Employee.new("Turner", "turner@live.com", "303-555-5555", 500)
  #
  #   assert human_resources.assign(danai)
  #   assert human_resources.assign(anna)
  #   assert human_resources.assign(turner)
  #
  #
  # end


  def test_review_given_to_employees
    danai   = Employee.new("Danai", "danai@live.com", "307-555-5555", 100)
    danai.add_review("yeah we should explore other options")
    assert_equal "yeah we should explore other options", danai.review[0]
  end


  def test_give_raise_to_employee

  end















end
