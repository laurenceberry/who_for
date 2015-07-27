class ChangeProfileQuoteToText < ActiveRecord::Migration
  def up
    change_column :profile_quotes, :quote, :text
  end
  def down
    # This might cause trouble if you have strings longer
    # than 255 characters.
    change_column :profile_quotes, :quote, :string
  end
end
