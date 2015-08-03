class AddImageToPack < ActiveRecord::Migration
  def up
    add_attachment :packs, :image
  end
end
