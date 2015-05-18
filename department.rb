class Department < Employee
  attr_reader :name, :department_staff

  def initialize(name)
    @name = name
    #@deparment_directory = []
    @department_staff = []
  end


  def assign(employee)
    @department_staff << employee
  end


  def add_salary
    total_salary = 0
    @department_staff.each {|employee|
       total_salary += employee.salary
      }

    total_salary
  end


  def department_wide_raise(amount)
    good_employee = @department_staff.select{|employee|yield(employee)
          employee.verdict == "Good" && employee.salary < 2000}

    good_employee.each {|employee| employee.salary += amount/good_employee.count}

  end



end



#===============================================================================
# def department_wide_raise(amount)
#
#   good_employee = @department_staff.select{|employee|
#   employee.verdict == "Good" && employee.salary < 2000}
#
#   good_employee.each {|employee| employee.salary += amount/good_employee.count}
# end

#===============================================================================
