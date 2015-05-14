class Employee
  attr_reader :name, :email, :phone_number, :salary

  def initialize(name, email, phone_number, salary)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @department_staff = []

  end

  def assign(department)
    @department_staff << department
  end

   def a_method(get_a_name)
     get_a_name[0]

   end





end
