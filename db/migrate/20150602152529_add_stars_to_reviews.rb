class AddStarsToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :stars, :integer, :default => 0, :null => false
  end
end
