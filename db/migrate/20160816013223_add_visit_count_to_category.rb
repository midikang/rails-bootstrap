class AddVisitCountToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :visit_count, :integer, default: 0
  end
end
