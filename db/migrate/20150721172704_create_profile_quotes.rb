class CreateProfileQuotes < ActiveRecord::Migration
  def change
    create_table :profile_quotes do |t|
      t.string :quote
      t.belongs_to :profile, index: true

      t.timestamps
    end
  end
end
