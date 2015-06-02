class Review < ActiveRecord::Base
  has_many :comments
  accepts_nested_attributes_for :comments

  def display_name
    title.upcase
  end
end
