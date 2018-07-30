class Task < ApplicationRecord
  validates :subject, presence: true
end
