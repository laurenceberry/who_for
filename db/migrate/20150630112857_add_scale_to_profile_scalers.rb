class AddScaleToProfileScalers < ActiveRecord::Migration
  def change
    add_column :profile_scalers, :scale, :integer
    add_column :profile_scalers, :out_of, :integer
  end
end
