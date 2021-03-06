class User < ActiveRecord::Base
  has_secure_password
  has_many :categories
  has_many :contacts

  def full_name
    if self.first_name && self.last_name
      "#{self.first_name} #{self.last_name}"
    elsif self.first_name
      self.first_name
    elsif self.last_name
      self.last_name
    else
      self.email
    end
  end
end
