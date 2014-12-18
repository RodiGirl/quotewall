class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :statement
      t.string :saidby
      t.integer :combination_id

      t.timestamps
    end
  end
end
