class Review < ActiveRecord::Base

  def display_name
    title.upcase
  end
end
