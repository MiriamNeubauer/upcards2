class AddAvatarToBizcards < ActiveRecord::Migration
  def change
    add_column :bizcards, :avatar, :string
  end
end
