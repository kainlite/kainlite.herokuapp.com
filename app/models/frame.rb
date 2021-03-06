class Frame < ActiveRecord::Base
  validates_presence_of :title, :from, :institution, :description, :kind

  default_scope { order('frames.to DESC') }

  scope :work, -> { where(kind: 'work') }
  scope :study, -> { where(kind: 'study') }
end
