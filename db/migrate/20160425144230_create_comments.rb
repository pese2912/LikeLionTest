class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :post_id # 키를 가지고 있어야한다.
      
      t.timestamps null: false
    end
  end
end
