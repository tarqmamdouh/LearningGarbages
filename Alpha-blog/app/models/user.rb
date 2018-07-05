class User < ApplicationRecord
  #to ignore case sensetivity joe == Joe == JOE
  validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 3, maximum:25}
  # validates :username, presence: true, uniqueness: {case_sensitive: true}, length: {minimum: 3, maximum:25}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #email Regular expression
  validates :email, presence: true, length: { maximum: 105 },
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }
  end