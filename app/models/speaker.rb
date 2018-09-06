class Speaker < ApplicationRecord
  validate :first_name, length: {minimum: 2 }
  validate :last_name, length: {minimum: 2 }
  validate :email, uniqueness: true
  validate :age, numericality: { greater_than_or_equal_to: 18 }
end
