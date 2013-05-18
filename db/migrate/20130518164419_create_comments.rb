class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :place

      t.timestamps
    end
    add_index :comments, :place_id
  end
end
