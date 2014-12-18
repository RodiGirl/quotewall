class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :remark
      t.string :user_id
      t.string :combination_id

      t.timestamps
    end
  end
end
