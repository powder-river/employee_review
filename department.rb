class Department < Employee
  attr_reader :name, :department_staff

  def initialize(name)
    @name = name
    #@deparment_directory = []
    @department_staff = []
  end

  # def assign_dep (deparment_name)
  #   @deparment_directory << deparment_name
  # end


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

    @department_staff.each {|employee|
      if employee.verdict == "Good"
        #better way to do this below instead of /2
       employee.salary += amount/2
     end


    }



  end















end
