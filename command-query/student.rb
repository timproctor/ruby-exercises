class Student
  def initialize
    @grade = %w(F D C B A)
  end

  def grade
    @grade[2]
  end

  def study
    @grade.rotate! unless is_a?
  end

  def slack_off
    @grade.rotate!(-1) unless is_f?
  end

  private

  def is_a?
    grade == "A"
  end

  def is_f?
    grade == "F"
  end

end
