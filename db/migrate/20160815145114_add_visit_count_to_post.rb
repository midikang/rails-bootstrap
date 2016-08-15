class AddVisitCountToPost < ActiveRecord::Migration
  def change
    add_column :posts, :visit_count, :integer, default: 0
  end
end
