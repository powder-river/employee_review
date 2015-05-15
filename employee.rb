class Employee
  attr_reader :name, :email, :phone_number, :review, :verdict
  attr_accessor :salary

  def initialize(name:, email:, phone_number:, salary:)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @review = []
  end


  def god_help_me (do_something_helpful)

  end

  def add_review (review)
    @review << review
  end


  def good_or_bad (verdict)
      verdict
      @verdict = verdict
  end

  def give_raise(amount)
    @salary += amount
  end




end
