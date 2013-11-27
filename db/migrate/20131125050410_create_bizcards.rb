class CreateBizcards < ActiveRecord::Migration
  def change
    create_table :bizcards do |t|
      t.string :firstname
      t.string :lastname
      t.string :company
      t.string :role
      t.string :img
      t.boolean :onlinkedin

      t.timestamps
    end
  end
end
