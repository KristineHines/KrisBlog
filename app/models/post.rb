class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags
  validates :title, :presence => true
  validates :description, :presence => true
  # Remember to create a migration!
end
