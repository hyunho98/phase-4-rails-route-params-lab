class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def match_name(name)
    [first_name.downcase, last_name.downcase].include?(name.downcase)
  end

end
