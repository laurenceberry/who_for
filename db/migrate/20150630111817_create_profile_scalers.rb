class CreateProfileScalers < ActiveRecord::Migration
  def change
    create_table :profile_scalers do |t|
      t.string :name
      t.belongs_to :profile, index: true

      t.timestamps
    end
  end
end
