class AddSummayField < ActiveRecord::Migration
  def change
    add_column :profiles, :summary, :text
  end
end
