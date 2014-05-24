class WorkType < ActiveRecord::Base
  has_many :works

  validates :name, presence: true
  validates :description, presence: true
end
