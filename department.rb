class Department
  attr_reader :name

  def initialize(name)
    @name = name
    @department_staff = []
  end

  def assign(department)
    @department_staff << department
  end

  def get_name(get_a_name)
    get_a_name[0].name
  end

  def get_salary(get_a_salary)
    get_a_salary[0].salary
  end





end
