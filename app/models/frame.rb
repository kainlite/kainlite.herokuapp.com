class Frame < ActiveRecord::Base
  validates_presence_of :title, :to, :from, :institution, :description, :kind

  scope :work, -> { where(kind: 'work') }
  scope :study, -> { where(kind: 'study') }
end
