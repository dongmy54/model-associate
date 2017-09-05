class Employee < ApplicationRecord
  has_many   :subordinates, class_name: "Employee", foreign_key: "manager_id"
  belongs_to :manager,      class_name: "Employee", optional: true
  # PS: 加上optional: true，让manager_id成为可选值（可为nil)
end
