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
        #in other words need away to say amount/number of good employees
        good_kids = @department_staff.reject {|n| ["Bad"].include?(n)}
        byebug
       employee.salary += amount/good_kids.count #on the right track with this
     end


    }



  end















end
