class User < ApplicationRecord
  has_secure_password

  validates :email, :username, uniqueness: true, presence: true

  def self.authenticate(login, password)
    user = find_by_login(login)
    user&.authenticate(password)
  end

  def self.find_by_login(login)
    where("lower(username) = lower(:login) OR lower(email) = lower(:login)", { login: login }).first
  end
end
