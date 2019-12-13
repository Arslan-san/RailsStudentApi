class UniStudent < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gpa, presence: true
  validates :university, presence: true
end
