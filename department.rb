class Department
  attr_reader :name ,:department_staff

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





  def get_name(get_a_name)
    get_a_name[0].name
  end


  # def get_salary(get_a_salary)
  #   get_a_salary[0].salary
  # end
  #
  # def add_salary(arguement )
  #   arguement[3]
  #
  # end







end
